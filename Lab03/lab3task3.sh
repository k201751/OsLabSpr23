read -p "Enter new password samba user: " -s password
sudo apt install samba -y
sudo mkdir home/ali/sharingFolder
sudo chmod 777 home/ali/sharingFolder
sudo useradd user1
echo "$password" | sudo smbpasswd –a user1
echo "[sharingFolder]" | sudo tee -a /etc/samba/smb.conf
echo -e "\tpath = /home/ali/sharingFolder" | sudo tee -a /etc/samba/smb.conf
echo -e "\tvalid users = user1" | sudo tee -a /etc/samba/smb.conf
echo -e "\tread list = user1" | sudo tee -a /etc/samba/smb.conf
echo -e "\twrite list = user1" | sudo tee -a /etc/samba/smb.conf
echo -e "\tbrowseable = yes" | sudo tee -a /etc/samba/smb.conf
testparm

