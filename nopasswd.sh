#!/bin/sh
#本机上已有 id_dsa.pub ;若无, 使用命令 :
ssh-keygen -t rsa -C "romepeng@outlook.com"
cat ~/.ssh/id_rsa.pub

# sh nopasswd.sh USER REMOTE_HOST
scp ~/.ssh/id_rsa.pub  $1@$2:~/
ssh $1@$2 " touch ~/.ssh/authorized_keys ; cat ~/id_rsa.pub  >> ~/.ssh/authorized_keys; chmod 644 ~/.ssh/authorized_keys; exit"
