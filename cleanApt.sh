
# Sync date
timedatectl set-ntp true

# REF: https://community.husarion.com/t/solved-server-certificate-verification-failed/778/2
sudo apt install --reinstall ca-certificates
