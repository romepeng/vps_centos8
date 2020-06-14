# vps_centos8
if change OS, please stop vps first;

config centos8 on aliyun 

1. login by root passwd;
change hostname: change_hostname.sh
hostnamectl set-hostname aliyun
vi /etc/hosts
reboot -f

2. adduser demo  /password demo/ gpasswd -d demo wheel;
3. dnf update;
nano /etc/ssh/sshd_config;
firewall config: firewall-cmd --permanent --query-port=22/tcp/ firewall-cmd --reload
touch nopasswd.sh-- ssh key login config


4. install git. tmux, curl; wget, unzip, zip, gcc, svn
install trojan (gcp )-- config_client.json-- change  remote server domain/passwd/ssl "verify" --false
+ proxychains-ng--config socks5 127.0.0.1:1080
install miniconda/ conda env demo/jqdata/tspro

5.install neonvim/chmod +x neonvim; mv neovim nvim/ mv to /usr/bin; config/install vim-plug;
 or install space-vim--config;
 TODO: which install on root; which install on user-demo?
 6.install zsh-- oh-my-zsh; config in user env
 
 7.centos8 install mysql8
 
 
 
 
 
 
 

