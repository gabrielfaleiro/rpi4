# Raspberry Pi 4 running Ubuntu 18.04
# REF: https://ubuntu.com/download/raspberry-pi

# /etc/netplan/*.yaml

# Check network interfaces
# REF: https://help.ubuntu.com/stable/ubuntu-help/net-wireless-troubleshooting-hardware-check.html.en
lshw -C network

# Code example 1:
network:
    ethernets:
        eth0:
            dhcp4: no
            addresses: [192.168.0.80/24]
            gateway4: 192.168.0.1
            nameservers:
                addresses: [8.8.8.8,8.8.4.4]
            optional: true
    version: 2



# Code example 2:


network:
    ethernets:
        eth0:
            dhcp4: no
            addresses: [192.168.2.1/24]
            optional: true
    wifis:
        wlan0:
            dhcp4: no
            addresses: [192.168.0.80/24]
            gateway4: 192.168.0.1
            nameservers:
                addresses: [8.8.8.8,8.8.4.4]
            optional: true
            access-points:
                "MOVISTAR_5534":
                    password: "nMJ4pmgcj39bNX3kipii"

    version: 2
