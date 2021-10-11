# Laptop Security
In order to reach the standards for [Cyber Essentials Plus](https://www.ncsc.gov.uk/cyberessentials/overview) our laptops must meet the following requirements.

## Running a supported OS
The operating system must be a current, supported version, that continues to receive security updates.

### Linux (Ubuntu)
Check [Ubuntu releases](https://wiki.ubuntu.com/Releases) to ensure that your version is supported.

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
User accounts should be configured to lock after a **maximum** of 10 failed login attempts.

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
You must be have [Made Tech's VPN](../vpn/README.md) configured on your system.

## Anti-virus
You must be running Anti-virus software. The installed AV software must:
- be up to date (the most recent stable version, within 30 days of it's release)
- contain an up to date database of viruses and malicious software
- prevent access to, or the running of any malicious file or software (On-access scanning as opposed to scheduled scanning)

You can test the configuration of your AV software using the test files provided by [EICAR](https://www.eicar.org/) on their ["Anti Malware Testfile" page](https://www.eicar.org/?page_id=3950). For example, after downloading `eicar.com.txt` it should not be possible to open the file in a text editor.

### Linux
Made Tech do not have a preferred/approved Anti-virus tool for Linux, but it is your responsibility to install a package that meets the above requirements.

#### ClamAV
[ClamAV](https://www.clamav.net/) is an open source AV tool that is popular on Linux - it can be configured in a way that meets the requirements above, but this involves enabling on-access scanning.

[Installation and configuration instructions](linux_av.md)
