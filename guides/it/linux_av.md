# All about Linux
In order to reach the standards for [Cyber Essentials Plus](https://www.ncsc.gov.uk/cyberessentials/overview), all our laptops must meet a certain set of requirements. For Mac and Windows machines that is controlled remotely by our IT Partner. For Linux machines that currently all needs to be done manually.

The documentation below is valid in places and out of date (but not incorrect) in others. A new set of standards is being put together but it won't be ready until January 2022. At that point this new information will move on to the Knowledge Base.

In the meantime, any questions to [operations@madetech.com](mailto:operations@madetech.com) or the #linuxination Slack channel.

- [Running a supported OS](#ref_1)
- [User accounts](#ref_2)
- [Firewall](#ref_3)
- [Disabling auto mount/auto run](#ref_4)
- [VPN](#ref_5)
- [Antivirus](#ref_6)


<a id="ref_1"></a>
## Running a supported OS
The operating system must be a current, supported version, that continues to receive security updates. Most people use Debian/Ubuntu or Fedora.

Check releases for your distribution to ensure that your version is supported.
[Ubuntu releases](https://wiki.ubuntu.com/Releases)
[Debian releases](https://www.debian.org/releases/)
[Fedora releases](https://docs.fedoraproject.org/en-US/releases/)

<br />
------------------------------------------------------------------------------------------------------------------------------------


<a id="ref_2"></a>
## User accounts
The root account must be disabled. On Ubuntu this is the case by default.

**Note: This is optional for Linux users, though recommended by Cyber Essentials Plus:**

Use a standard account that is not on the `sudoers list` and provision a separate user with sudo for admin tasks. In order to run commands that require `sudo` access you then temporarily switch to the admin account, run the `sudo` command then switch back to the standard user:

```bash
su - [admin account]
sudo [command]
exit
```
**/Note**
<br />
------------------------------------------------------------------------------------------------------------------------------------


### Account locking
User accounts should be configured to lock after a **maximum** of 10 failed login attempts.

**Debian/Ubuntu:**
To enable account locking add the following line to `/etc/pam.d/common-auth`, directly after the `# here are the per-package modules (the "Primary" block)` comment:

```
auth required pam_tally2.so onerr=fail deny=10 unlock_time=300 audit
```

This will:
- lock a user's account after 10 failed login attempts - this can be reduced but should not be greater than 10
- lock the account for 5 minutes (300 seconds)
- log the username to the syslog if the user is not found

<br />
------------------------------------------------------------------------------------------------------------------------------------

<a id="ref_3"></a>
## Firewall
You should be running a local firewall configured to block any incoming traffic.

**Debian/Ubuntu:**
Ubuntu ships with `ufw`, but it is disabled by default, on Debian it can be installed with apt. Enable it by running:

```bash
sudo apt install ufw
sudo ufw enable
```

<br />
------------------------------------------------------------------------------------------------------------------------------------

<a id="ref_4"></a>
## Auto mount / auto run disabled
Your system should *not* auto mount or auto run files when media, such as a removable USB disk, is inserted.

**Gnome:**

In Gnome settings this feature can be disabled by selecting _"Never prompt or start programs on media insertion"_ in _Settings_ > _Removable media_.

<br />
------------------------------------------------------------------------------------------------------------------------------------

<a id="ref_5"></a>
## VPN
You must be have [Made Tech's VPN](../vpn/README.md) configured on your system.

**Debian/Ubuntu:**
```bash
sudo apt install network-manager-l2tp network-manager-l2tp-gnome
sudo systemctl restart NetworkManager.service
```

<br />
------------------------------------------------------------------------------------------------------------------------------------

<a id="ref_6"></a>
## Anti-virus
You must be running Anti-virus software. The installed AV software must:
- be up to date (the most recent stable version, within 30 days of it's release)
- contain an up to date database of viruses and malicious software
- prevent access to, or the running of any malicious file or software (On-access scanning as opposed to scheduled scanning)

You can test the configuration of your AV software using the test files provided by [EICAR](https://www.eicar.org/) on their ["Anti Malware Testfile" page](https://www.eicar.org/?page_id=3950). For example, after downloading `eicar.com.txt` it should not be possible to open the file in a text editor.

#### ClamAV
[ClamAV](https://www.clamav.net/) is an open source AV tool that is popular on Linux - it can be configured in a way that meets the requirements above, but this involves enabling on-access scanning.

**Debian/Ubuntu:**
```bash
sudo apt install clamav clamav-daemon
```

Once installed enable and start the systemd service:

```bash
sudo systemctl enable clamav-daemon
sudo systemctl start clamav-daemon
```

We also want to make a quarantine directory that requires elevated privileges to access:
```bash
sudo mkdir -p /home/clamav/quarantine && sudo chown -R clamav:clamav /home/clamav
```

To configure on-access scanning we need to add the following lines to the clam-daemon configuration file `/etc/clamav/clamd.conf`:
```bash
OnAccessIncludePath /home
OnAccessIncludePath /var/www
OnAccessExcludeUname clamav
OnAccessExcludeRootUID true
```
The first two lines tell ClamAv (clamonacc) to watch for file changes recursively in `/home` and `/var/www`.

The `clamonacc` daemon runs as root while `clamd` runs as user `clamav` so the second two tell it to exclude file operations carried out by `clamav` or `root` so that we don't end up in a infinite loop where the daemon reads a file to scan it and triggers another scan as part of that operation.


Create a SystemD unit file for `clamonacc`

```bash
# /etc/systemd/system/clamonacc.service
[Unit]
Description=ClamAV On Access Scanner
Requires=clamav-daemon.service
After=clamav-daemon.service syslog.target network.target

[Service]
Type=simple
User=root
ExecStartPre=/bin/bash -c "while [ ! -S /var/run/clamav/clamd.ctl ]; do sleep 1; done"
ExecStart=/usr/sbin/clamonacc -F --fdpass --config-file=/etc/clamav/clamd.conf --log=/var/log/clamav/clamonacc.log --move=/home/clamav/quarantine
CPUQuota=30%

[Install]
WantedBy=multi-user.target
```

The `ExecStartPre` script here ensures that `clamd` waits for ClamAv to finish loading virus definitions into memory and create the required socket before starting up (Otherwise it would error).

Enable and start the service:

```bash
sudo systemctl enable clamonacc
sudo systemctl start clamonacc
```

Check that everything is running correctly by downloading a test file:

```bash
$ wget www.eicar.org/download/eicar.com
$ ls | grep eicar
$ sudo ls /root/quarantine
eicar.com
```

You'll see the file has not been downloaded to the directory you're in, but rather moved directly to the quarantine directory we set up earlier.


The following resources are useful for configuring ClamAV:
- The [Configuration](https://docs.clamav.net/manual/Usage/Configuration.html) section of the ClamAV documentation
- The [On Access Scanning](https://docs.clamav.net/manual/OnAccess.html) section of the official docs
- [Installation & Configuration of ClamAV Antivirus on Ubuntu 18.04](https://aaronbrighton.medium.com/installation-configuration-of-clamav-antivirus-on-ubuntu-18-04-a6416bab3b41) - this Medium article was
particularly helpful for installing on Ubuntu and enabling on-access scanning.


#### Troubleshooting ClamAV
Check that clamonacc is running correctly by tailing logs:

```bash
sudo tail /var/log/clamav/clamonacc.log
```

You should see output like:

```bash
--------------------------------------
ClamInotif: watching '/home' (and all sub-directories)
ClamInotif: watching '/var/www' (and all sub-directories)
```

If you see:

```bash
--------------------------------------
ClamInotif: watching '/home' (and all sub-directories)
ClamInotif: watching '/var/www' (and all sub-directories)
ERROR: ClamInotif: could not watch path '/home', No space left on device
ClamScanQueue: stopped
Clamonacc: stopped
```

You may need to increase the number of inotify watchers available from the default 65536.

```bash
echo fs.inotify.max_user_watches=1048576 | sudo tee -a /etc/sysctl.conf && sudo sysctl -p
```
