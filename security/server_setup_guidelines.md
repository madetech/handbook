# Server security guide
## People wise for new starters:
- Setup for AWS account (https://madetech.signin.aws.amazon.com/console)
- 2FA enabled on AWS
- User for Mole

## People wise for leavers:
- Delete AWS account
- Remove key from mole

## Setting up a new server
- Network access
- Network access to instances should be restricted to only allow SSH, HTTP and HTTPS traffic; ports 22, 80 and 443 respectively. All other traffic must be rejected.
- For servers that are on AWS, this should be managed by the Security Groups feature. Add the instance to the ‘web’ security group.
- Other hosting providers that don’t have a similar feature to Security Groups should use a firewall at the operating system level. UFW rules should be used for Ubuntu servers.
- UFW should be configured to be enabled, and the default policy to deny all incoming traffic. Rules for allowing SSH, HTTP and HTTPS traffic then enabled.

### Malicious traffic
With incoming traffic restricted to specific ports, there is still the risk that malicious users will try and access the servers via these ports. It’s common for attackers to try multiple SSH users and password to gain access.

Installing and configuring fail2ban on each of the servers will monitor various logs on the system, and if specific criteria is met, fail2ban will add rules to the firewall on the fly to restrict access.
This should be tackled on a per project basis with care, as you don’t want to accidentally deny traffic. The `ignoreip` should be the main customisation per project/server.

For Ubuntu, install the `fail2ban` package and then configure the following options. This should be handled by Chef or Ansible.

1. Upload a config file `/etc/fail2ban/jail.local` based on `/etc/fail2ban/jail.conf`
2. `ignoreip` is the most important directive in the config file, this is your whitelist. Ensure that load balancers, servers used for deploys, The Mole etc are all whitelisted.
3. Under the `[sshd]` config, be sure to add `enabled = true`
4. Restart the fail2ban service

### SSH configuration restrictions
The following directives should be configured via Chef or Ansible:
- PasswordAuthentication no - disables the ability to SSH into a server using a password and ensures that key authentication is solely used.
- PermitRootLogin no - disable the ability for root SSH logins.
- AllowUsers deploy - space separated list of users that are allowed to SSH into the machine. This should include the deploy and provisioning user (usually ubuntu on AWS instances)
- Port 2222 - change the default port that sshd runs on

### Automatic security package updates
For Ubuntu, in order to enable automatic security package updates, create the following file /etc/apt/apt.conf.d/10periodic with the following contents:
```
APT::Periodic::Update-Package-Lists "1";
APT::Periodic::Download-Upgradeable-Packages "1";
APT::Periodic::AutocleanInterval "7";
APT::Periodic::Unattended-Upgrade "1";
```

This is then run daily, applying security updates automatically.
### Remote syslog
It’s important to have the system log push log messages out to a remote service, so that in the event of a server being compromised, log messages can’t be deleted.

Servers need to have rsyslog configured to forward on syslog messages to Papertrail over TLS.
Ongoing support of servers
Need to figure out a way to migrate OS once their End of Life is reached. For example, when Ubuntu 14.04, which we use for most of our apps, reaches End Of Life in April 2019, no security updates will be released.

## Ongoing support of servers
Need to figure out a way to migrate OS once their End of Life is reached. For example, when Ubuntu 14.04, which we use for most of our apps, reaches End Of Life in April 2019, no security updates will be released.

