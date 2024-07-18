# Using hackbox in Github Codespaces

This box's image is based on the official 1-week rolling Kali image sourced from https://hub.docker.com/r/kalilinux/kali-rolling. The metapackage kali-linux-headless is installed https://www.kali.org/tools/kali-meta/. Additional tools for cyber defense and penetration testing are installed via the `.devcontainer/init.sh` script.

This box uses the OpenVPN (v2) client in a codespace to connect into an OpenVPN capable VPN gateway. The template for this OpenVPN configuration is from https://github.com/codespaces-contrib/codespaces-openvpn.

# Using OpenVPN

1. Obtain an OpenVPN configuration file. This assumes you are using certificate based authentication to access the VPN. We'll call this file `vpnconfig.ovpn`. Place any needed certificates or keys in the `vpnconfig.ovpn` file. https://app.hackthebox.com/home and https://tryhackme.com/dashboard both provide OpenVPN configuration files for different challenges and a getting started guide can be found here https://help.hackthebox.com/en/collections/3157759-getting-started.
2. In the repository settings, create a codespaces user secret called `OPENVPN_CONFIG` and place the contents of the `vpnconfig.ovpn` file in it. The `.devcontainer/save-config.sh` script will save this secret into the codespace.
3. Create a codespace - after its started, the `.devcontainer/start-openvpn.sh` script will run and you should be connected to your VPN. If you aren't you can manually run `.devcontainer/start-openvpn.sh` to try again and logs can be found in `.devcontainer/openvpn-tmp/openvpn.log`.

# Using Git
You need to set your `user.email` and `user.name` for git in `.devcontainer/init.sh`.



