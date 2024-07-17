# Using hackbox in Github Codespaces

This box uses the OpenVPN (v2) client in a codespace to connect into an OpenVPN capable VPN gateway. The template for this OpenVPN install is from https://github.com/codespaces-contrib/codespaces-openvpn

The image is based on an official Debian image sourced from https://github.com/devcontainers/images/tree/main/src/base-debian with additional tools installed for cyber defense and penetration testing.

# Using OpenVPN

1. Obtain an OpenVPN configuration file. This particular sample is assuming you are using certificate based authentication to access the VPN. We'll call this file `vpnconfig.ovpn`. Place any needed certificates or keys in the `vpnconfig.ovpn` file. https://app.hackthebox.com/home and https://tryhackme.com/dashboard both provide OpenVPN configuration files for different challenges.
2. In the repository settings, create a codespaces user secret called `OPENVPN_CONFIG` and place the contents of the `vpnconfig.ovpn` file in it.
3. Create a codespace - after its started, you should be connected to your VPN. If you aren't you can manually run `.devcontainer/start-openvpn.sh` to try again and logs can be found in `.devcontainer/openvpn-tmp/openvpn.log`.



