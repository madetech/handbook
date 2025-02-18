# All about Linux
In order to reach the standards for [ISO](https://www.madetech.com/blog/iso-27001-changes/) and [Cyber Essentials Plus](https://www.ncsc.gov.uk/cyberessentials/overview), all our laptops must meet a certain set of requirements. For Mac and Windows machines that is controlled remotely by our IT Partner Aura. For Linux machines that currently all needs to be done manually.

The documentation below is valid in places and out of date (but not incorrect) in others. A new set of standards is being put together but it won't be ready until January 2022. At that point this new information will move to the internally facing Knowledge Base.

In the meantime; Welcome! If you have any questions please join the #linuxination Slack channel! Everybody really likes Linux so whether you are new to Linux or a Linux wizard we all like questions and are all here to help.



## Running a supported OS
The operating system must be a current, supported version, that continues to receive security updates.

### Linux (Ubuntu)
Check [Ubuntu releases](https://wiki.ubuntu.com/Releases) to ensure that your version is supported.

## Full disk encryption
**This is the most important step**. When you install your operating system there will be a checkbox to enable this. Please set a disk encryption password that fits the [password policy](https://github.com/madetech/handbook/blob/7d4a7f840a587fed5046045cbe43f8222cabb194/guides/security/password_policy.md).

It may be possible to encrypt dual booted or manual partitions but it is simpler to erase the disk and follow the guided installation for one operating system.

For Ubuntu select `Erase disk and install Ubuntu`, `Advanced features`, `Use LVM`, `Encrypt the new Ubuntu installation`. In the next step you will be able to set security and recovery keys. Don't forget them!

(Note: Enabling full disk encryption after installation is a difficult and dangerous process that is best not attempted. It is most likely you will have to complete all the following steps again after a fresh (disk encrypted) install).

## Automatic updates enabled
Security updates need to be downloaded and installed automatically (Note: it is up to users on when to apply non-security related updates). Both Ubuntu and Fedora have provisions to enable this:
+ [Ubuntu](https://help.ubuntu.com/community/AutomaticSecurityUpdates#Using_GNOME_Update_Manager)
+ [Fedora](https://fedoraproject.org/wiki/AutoUpdates#Automatic_Updates)


## User accounts
The user account that you use on a day to day basis must be a standard non-administrator account. If you require administrator rights to do your job, you can create a separate admin user and switch to this when required.

### Linux (Ubuntu)

**Note: This is optional for Linux users, though recommended by Cyber Essentials Plus.**

A standard account is not on the `sudoers list`, so in order to run commands that require `sudo` access you can temporarily switch to an admin account, run the `sudo` command then logout of the admin user:

```bash
su - [admin account]
sudo [command]
exit
```

## Account locking
User accounts should be configured to lock after a **maximum** of 10 failed login attempts for 5 minutes, log the username to the syslog if the user is not found, and apply the same settings to the root user account.

### Linux (Ubuntu)
To enable account locking on Ubuntu add the following line to `/etc/pam.d/common-auth`, directly after the `# here are the per-package modules (the "Primary" block)` comment:

```
auth required pam_tally2.so onerr=fail deny=10 unlock_time=300 audit even_deny_root root_unlock_time=600
```

This will:
- lock a user's account after 10 failed login attempts - this can be reduced but should not be greater than 10
- lock the account for 5 minutes (300 seconds)
- log the username to the syslog if the user is not found
- apply the same settings to the root account.

### Linux (Ubuntu) 22.04+
pam_tally2.so has been replaced by pam_faillock.so <br>
pam_failock.so settings can be made in `/etc/security/faillock.conf` and by adding the following to the `/etc/pam.d/common-auth` file:
```
auth    [default=die]   pam_faillock.so     authfail
auth    sufficient      pam_faillock.so     authsucc
```
If you have prevented all logins by mistake with pam_tally2 you can reboot to recovery mode into a root shell to access `/etc/pam.d/common-auth`.

#### Root account
[Ubuntu disables the root account by default](https://ubuntu.com/server/docs/security-users) by not setting a password. This allows a user to boot into a root shell via GRUB / recovery mode. To prevent this you should set a password for the root user:

```bash
sudo passwd root
```

## Firewall
You should be running a local firewall configured to block any incoming traffic.

### Linux (Ubuntu)
Ubuntu ships with `ufw`, but it is disabled by default. Enable it by running:

```bash
sudo ufw enable
```

## Auto mount / auto run disabled
Your system should *not* auto mount or auto run files when media, such as a removable USB disk, is inserted.

### Linux (Ubuntu)
In Ubuntu this feature can be disabled by selecting _"Never prompt or start programs on media insertion"_ in _Settings_ > _Removable media_.

## VPN
You must have [Made Tech's VPN](vpn/README.md) configured on your system.

## Anti-virus
You must be running Anti-virus software. The installed AV software must:
- be up to date (the most recent stable version, within 30 days of it's release)
- contain an up to date database of viruses and malicious software
- prevent access to, or the running of any malicious file or software (On-access scanning as opposed to scheduled scanning)

You can test the configuration of your AV software using the test files provided by [EICAR](https://www.eicar.org/) on their ["Anti Malware Testfile" page](https://www.eicar.org/download-anti-malware-testfile/). For example, after downloading `eicar.com.txt` it should not be possible to open the file in a text editor.

## SentinelOne
SentinelOne is the Linux Anti-virus Software of choice at Made Tech. To get set up with SentinelOne follow the instructions below

### Step 1: Download and install the package
* [DEB Installer](https://ncrepository.z33.web.core.windows.net/sentinelone/SentinelAgent-Linux-22-1-2-7-x86-64-release-22-1-2_linux_v22_1_2_7.deb) - For Debian/Ubuntu based distributions
* [Non-Signed RPM Installer](https://ncrepository.z33.web.core.windows.net/sentinelone/SentinelAgent-Linux-22-1-2-7-x86-64-release-22-1-2_linux_v22_1_2_7.rpm) - For RHEL/Fedora Based distributions
* [Signed RPM Installer](https://ncrepository.z33.web.core.windows.net/sentinelone/Signed-SentinelAgent-Linux-22-1-2-7-x86-64-release-22-1-2_linux_v22_1_2_7.rpm) - For RHEL/Fedora Based distributions

For Debian/Ubuntu
```
sudo dpkg -i ~/Downloads/SentinelAgent-Linux-22-1-2-7-x86-64-release-22-1-2_linux_v22_1_2_7.deb
```

For RHEL/Fedora
```
sudo rpm -i --nodigest ~/Downloads/SentinelAgent-Linux-22-1-2-7-x86-64-release-22-1-2_linux_v22_1_2_7.rpm
```
or
```
sudo rpm -i --nodigest ~/Downloads/Signed-SentinelAgent-Linux-22-1-2-7-x86-64-release-22-1-2_linux_v22_1_2_7.rpm
```

### Step 2: Register the Made Tech licence key to your SentinelOne install 

You can find the licence key in 1Password.
```
sudo /opt/sentinelone/bin/sentinelctl management token set [licence_key]
```

### Step 3: Start the Service
```
sudo /opt/sentinelone/bin/sentinelctl control start
```

Once installed, and you've started the service check with Ops to ensure you have registered to the SentinelOne dashboard successfully. If this was successful you can remove your previous Anti-virus solution. Should you face any problems or require support please reach out to #ops-it-support or #linuxination on Slack

## DriveStrike
DriveStrike must also be installed on all Linux machines. It is owned and managed by the awesome Systemagic! You will receive an email from DriveStrike with an invitation to install DriveStrike shortly after starting although it is the individual's responsibility to ensure it is on their machine and the service is enabled.

## Approved software
For Linux users anything downloaded from the main stable repositories is considered safe to install on your device.

## UEFI Settings

You probably want to go into the UEFI setup by hitting "Enter" to interrupt boot and then F1, and ...

- Enable virtualization. (in "Security")
    - You don't need this for containers, but you do for "proper" virtual machines
- Change the sleep state from S0 ("Windows 10") to S3 ("Linux") (in Config .. Power)
    - Without doing this you may experience "hot bag syndrome", flat batteries, and lower battery life in suspend
- Enable "swap Ctrl and Fn"
    - Because let's face it, the ThinkPad keyboard layout isn't right without doing this
