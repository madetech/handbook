# Laptop Security
In order to reach the standards for [Cyber Essentials Plus](https://www.ncsc.gov.uk/cyberessentials/overview) our laptops must meet the following requirements. 

## Running a supported OS
The operating system must be a current, supported version, that continues to receive security updates.

### Linux (Ubuntu)
Check [Ubuntu releases](https://wiki.ubuntu.com/Releases) to ensure that your version is supported.

## User accounts
The user account that you use on a day to day basis must be a standard non-administrator account. If you require administrator rights to do your job, you can create a separate admin user and switch to this when required.

### Linux (Ubuntu)
A standard account is not on the `sudoers list`, so in order to run commands that require `sudo` access you can temporarily switch to an admin account, run the `sudo` command then logout of the admin user:

```bash
su - [admin account]
sudo [command]
exit
```

## Account locking
User accounts should be configured to lock after a maximum of 10 failed login attempts.

### Linux (Ubuntu)
To enable account locking on Ubuntu add the following line to `/etc/pam.d/common-auth`:

```
auth required pam_tally2.so onerr=fail deny=6 unlock_time=300 audit even_deny_root root_unlock_time=600
```

This line should be added directly after the `# here are the per-package modules (the "Primary" block)` comment.

This will:
- lock a user's account after 6 failed login attempts
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
You must be running Anti-virus software with an up to date virus database.

### Linux (Ubuntu)

