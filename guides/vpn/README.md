## Connecting to Made Tech - VPN


<hr/>

**Made Tech pay per MB for the usage of this VPN, therefore, please limit your usage to work only i.e no streaming videos**

<hr/>

This is a guide to connect to the Made Tech Virtual Private Network (VPN).


- [MacOS](#macos)
- [Linux](#linux)

## MacOS

* Ensure you have the `Default` profile installed by checking **System Preferences** > **Profiles**. If you do not have this profile, please contact the ISMS team for assistance.
* Open **Network Preferences**. You can do this by clicking on the WiFi icon in the menu bar or by doing a Spotlight Search. You should see a screen that looks like the image below.

![preferences](images/macos/preferences.png)

Notice the `Made Tech - VPN`. This should automatically be there. Select the VPN.

![vpn](images/macos/vpn.png)

Everything should already be configured. Check **Show Wi-Fi status in menu bar** for convenience (optional). Click **Connect**.

![connect](images/macos/connect.png)

- The **Username** should be the local-part of your Made Tech email address
  - For example, if your email address was `jsmith@madetech.com`, your username would be `jsmith`
- The **Password** should be the same as your [G Suite](http://gsuite.google.com) password
- Click **OK**

That is it! You should now be connected to the `Made Tech - VPN`. If you are experiencing any problems, please contact the ISMS team.

## Linux 
### Ubuntu/Debian
https://docs.foxpass.com/docs/foxpass-linux-l2tpipsec
### Fedora
1. If you are using the gnome version first install the dependencies
```bash
# for gnome
sudo dnf install NetworkManager-libreswan-gnome xl2tpd
```

2. Then you should be able to go to settings > networking and click the '+' add button
![select_type_screen](images/linux/select_type.png)

- Select the "Layer2 Tunneling Prootocol (L2TP)"

3. Main settings

![main_settings_screen](images/linux/main_settings.png)
- Enter the gateway as `vpn.madetech.com`
- Your username (the part before your gmail @)

4. Click the "IPsec Settings.." button

![main_settings_screen](images/linux/ipsec.png)
- check the top checkbox and enter the shared secret (this will be provided to you)
- click ok

5. Click the "PPP settings.." button

![main_settings_screen](images/linux/ppp_settings.png)
- uncheck all auth methods except "PAP2"
- click ok and apply


