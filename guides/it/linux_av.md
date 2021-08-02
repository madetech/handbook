Unfortunately the version in the Ubuntu repositories isn't kept up to date with upstream releases as fast as we need it to be so the current recommendation is to compile from source:

[ClamAV compilation guide](https://docs.clamav.net/manual/Installing/Installing-from-source-Unix.html)

You may need to replace
```
python3 -m pip install --user cmake pytest
```

with

```
sudo python3 -m pip install cmake
```

Once installed enable and start the systemd service:

```
sudo systemctl enable clamav-daemon
sudo systemctl start clamav-daemon
```

We also want to make a quarantine directory:
```
sudo mkdir /root/quarantine
```

You can check the installed version using:

```
clamscan --version
```

and scan using:

```
clamscan
```

To configure on-access scanning we need to add the following lines to the clam-daemon configuration file `/etc/clamav/clamd.conf`:

```
OnAccessIncludePath /home
OnAccessIncludePath /var/www
OnAccessExcludeUname clamav
OnAccessExcludeRootUID true
```
The first two lines tell ClamAv (clamonacc) to watch for file changes recursively in `/home` and `/var/www`.

The `clamonacc` daemon runs as root while `clamd` runs as user `clamav` so the second two tell it to exclude file operations carried out by `clamav` or `root` so that we don't end up in a infinite loop where the daemon reads a file to scan it and triggers another scan as part of that operation.


Create a SystemD unit file for `clamonacc`

```
# /etc/systemd/system/clamonacc.service
[Unit]
Description=ClamAV On Access Scanner
Requires=clamav-daemon.service
After=clamav-daemon.service syslog.target network.target

[Service]
Type=simple
User=root
ExecStartPre=/bin/bash -c "while [ ! -S /var/run/clamav/clamd.ctl ]; do sleep 1; done"
ExecStart=/usr/sbin/clamonacc -F --config-file=/etc/clamav/clamd.conf --log=/var/log/clamav/clamonacc.log --move=/root/quarantine

[Install]
WantedBy=multi-user.target
```

The `ExecStartPre` script here ensures that `clamd` waits for ClamAv to finish loading virus definitions into memory and create the required socket before starting up (Otherwise it would error).

You will likely need to increase the number of inotify watchers available from the default 65536.

```
echo fs.inotify.max_user_watches=1048576 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```

Enable and start the service:

```
sudo systemctl enable clamonacc
sudo systemctl start clamonacc
```

Check that clamonacc is running correctly by tailing logs:

```
sudo tail /var/log/clamav/clamonacc.log
```

You should see output like:

```
--------------------------------------
ClamInotif: watching '/home' (and all sub-directories)
ClamInotif: watching '/var/www' (and all sub-directories)
```

If you see:

```
--------------------------------------
ClamInotif: watching '/home' (and all sub-directories)
ClamInotif: watching '/var/www' (and all sub-directories)
ERROR: ClamInotif: could not watch path '/home', No space left on device
ClamScanQueue: stopped
Clamonacc: stopped
```

That likely indicates you need to increase the number of inotify watchers available as mentioned above.

We can test this is running correctly by downloading a test file:

```
$ wget www.eicar.org/download/eicar.com
$ ls | grep eicar
$ sudo ls /root/quarantine
eicar.com
```

You'll see the file has not been downloaded to the directory you're in, but rather moved directly to the quarantine directory we set up earlier.

By default clamonacc is quite resource hungry, (~100% CPU core, 1gb+ RAM). You can limit the CPU consumption somewhat by adding a CPUQuota to the systemd unit file:

```
# /etc/systemd/system/clamonacc.service
[Unit]
Description=ClamAV On Access Scanner
Requires=clamav-daemon.service
After=clamav-daemon.service syslog.target network.target

[Service]
Type=simple
User=root
ExecStartPre=/bin/bash -c "while [ ! -S /var/run/clamav/clamd.ctl ]; do sleep 1; done"
ExecStart=/usr/sbin/clamonacc -F --config-file=/etc/clamav/clamd.conf --log=/var/log/clamav/clamonacc.log --move=/root/quarantine
CPUQuota=30%

[Install]
WantedBy=multi-user.target
```

The following resources are useful for configuring ClamAV:
- The [Configuration](https://docs.clamav.net/manual/Usage/Configuration.html) section of the ClamAV documentation
- The [On Access Scanning](https://docs.clamav.net/manual/OnAccess.html) section of the official docs
- [Installation & Configuration of ClamAV Antivirus on Ubuntu 18.04](https://aaronbrighton.medium.com/installation-configuration-of-clamav-antivirus-on-ubuntu-18-04-a6416bab3b41) - this Medium article was
particularly helpful for installing on Ubuntu and enabling on-access scanning.
