#!/bin/bash
yum -y install @mysql

# systemctl start mysqld
# systemctl enable --now mysqld
# systemctl status mysqld
#  mysql_secure_installation

#MySQL8.0允许外部访问
mysql -u root -p
show databases;
use mysql;
update user set host='%' where user ='root';

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%'WITH GRANT OPTION;
FLUSH PRIVILEGES;


# create database demo
mysql> create database demo;
mysql> GRANT ALL ON demo.* TO jqdata@localhost IDENTIFIED BY 'jqdata123';
mysql> exit


#设置防火墙
$ firewall-cmd --zone=public --add-port=3306/tcp --permanent
$ firewall-cmd --reload
service msyqld restart
