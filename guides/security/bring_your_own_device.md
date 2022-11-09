# Bring Your Own Device Policy

This document highlights things you should think about, and how you manage your own device while working on Made Tech products and services. Not only the data you work with but also the software you have installed and how you protect it - like antivirus software.

This only applies to you if you’re using your own device for Made Tech work. Devices aren’t just desktop and laptops - they include, for example, tablets and smartphones.

## Using and managing your device

If you’re using your own device for Made Tech work, it means you’re being trusted to use company proprietary data appropriately and keep that information or data you hold safe.

### Don’t ‘jailbreak’ your device
‘Jailbreaking’ is the process of removing hardware and software vendor restrictions for the purpose of custom modifications (for example, installing unapproved applications or changing the user interface in an unsupported way).

You must not use a jailbroken device for any Made Tech work or to handle any company proprietary data, including logging into Made Tech services which include (but is not limited to) G-Suite, Slack, password management software, etc.

### Keep your software up to date
You must keep your software up to date. Old versions of software are often vulnerable to attack. Update all the software on your device whenever a new version is available. This includes:

- Your device’s operating system
- Web browsers
- Extensions
- Plug-ins

You must update your software within 14 days of a new verison being released.

### Use endpoint protection software
Unless your device is operating iOS or ChromeOS, your device must have endpoint protection software installed, which must also be kept up to date. 

Endpoint protection is more than just antivirus software, and usually includes a firewall and may have other tools to protect your device, like network threat detection.

Any device you plug into the device, like an external USB device, must also be scanned for viruses. We recommend doing a full scan at least once a month.

### Set a password/passphrase
Your device must require a password/passphrase to login, return from screensaver or wake from sleep. Your device will lock the screen (or start the screensaver) after no more than 2 minutes of the device being idle.

### How you manage passwords/passphrases
Your password/passphrase must conform to the Made Tech Password Policy. You should also use a password manager and 2FA.

### How you connect your device to networks
We have our own VPN which automatically authenticates with G Suite. Everyone can use the service (not only engineers) for a more secure experience (i.e. protecting yourself when using a public WiFi). To connect to the VPN, please refer to the [guide found in the Handbook.](../it//vpn/README.md) 

### Disk Encryption
You must encrypt all your data storage devices. This includes:

 - hard disks (including on smartphones and tablets)
 - cloud storage
 - USB sticks

If these aren’t encrypted, people can see any data that’s on them or install viruses without you noticing

### Turn your device off, rather than putting it to sleep
Depending on the device, data may only be encrypted when the device itself is turned off. So please be aware that closing the lid to put the device to sleep won’t necessarily enable encryption; in which case the data will not be protected.

If your device will not be used for a significant period of time, we suggest turning it off entirely to ensure disk encryption is enabled. Most modern operating systems will allow you to resume all the files/applications that were open before shutdown.

Turning off your device to ensure disk encryption is enabled is important if your device will be unattended. This could include when inside a backpack or carrying case when travelling, as those can be lost or stolen

### Store data in Made Tech cloud services
Company proprietary data should be stored in Made Tech tools. Check what your team is using. Do not store data locally on your device, ensure it's synced to the relevant cloud service.

If you are working offline and cannot access the cloud service, you can make a temporary local copy. Make sure you update the version stored in the cloud service as soon as possible, and then delete your local copy in a way that the files can’t be recovered.

### Delete/erase data properly
When company proprietary data is no longer required it should be securely erased so it cannot be recovered. This must be completed for any data that is personal or sensitive in any other way - such as credentials or contracts.

If the data storage in which the data resides is encrypted, usually destroying the decryption passphrase is sufficient to render the data unreadable.

If files or folders need to be removed from within some data storage, then overwriting techniques may be required. Overwriting techniques must meet [government requirements](https://en.wikipedia.org/wiki/Infosec_Standard_5) and should at least overwrite the data once, using randomly generated data.

### How to use peripherals
It is easy for a device like a USB mouse or keyboard to be modified to try and insert malicious software such as a virus or key logger that captures what you type.

Bluetooth and peripheral devices such as (USB mice or keyboards. drawing tablets or even presentation ‘clickers’ can be used to extract data.

**Are they yours?**
Be sensible about how you attach peripherals to your device, particularly if the device is not yours. Even if the person handing you a USB is trustworthy, the USB may have been infected with malware such as a virus without them knowing.

### Administrator accounts
One technique to prevent malware from spreading through your account into the rest of your device and data is to use a separate user account for managing the device and installing software. Made Tech employs this technique on the devices it issues, and you are encouraged to do the same.

### Secure Development
It is your responsibility to ensure that you or your device does not accidentally or on purpose, introduce a vulnerability into Made Tech environments or services. You could also use a separate user account on your device for development work to help keep your Made Tech work separate from any other work, and personal use, like social media.

### Remote Access Tools
Don’t use unattended Remote Access Tools (“RAT”) on devices containing or accessing company proprietary data. RATs can be useful for accessing your device from another location, but could also enable an attacker to do the same.

Unattended Remote Access Tools should not be installed on devices you use for your Made Tech work. Most operating systems come with remote access software, like VNC or SSH. These software items are OK, but should not be used as an inbound ‘service’. Given the nature of these tools and the potential risks they can introduce, we want to conduct a risk assessment of them before their use in Made Tech.

### Reporting an issue
You must tell Made Tech if your device that is used in connection with your Made Tech work is lost, stolen or otherwise compromised as soon as possible. You should report anything suspicious to a member of the Operations Team as soon as possible.

If you suspect that your device may be compromised (has a virus etc), you should telephone them rather than email them. Your emails could transfer malware from your device to other people or into Made Tech systems and services.
