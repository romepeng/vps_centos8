# vps_centos8
config centos8 on aliyun 

1. login by root passwd;
2. adduser demo  /password demo/ gpasswd -d demo wheel;
3. dnf update;
nano /etc/ssh/sshd_config;
firewall config: firewall-cmd --permanent --query-port=22/tcp/ firewall-cmd --reload
touch nopasswd.sh-- ssh key login config


4. install git. tmux, curl; wget,
install trojan (gcp )+ proxychains-ng--config socks5 127.0.0.1:1080
install miniconda/ conda env demo/jqdata/tspro

install neonvim/chmod +x neonvim; mv neovim nvim/ mv to /usr/bin; config/install vim-plug;
 or install space-vim--config;
 TODO: which install on root; which install on user-demo?
 
 

