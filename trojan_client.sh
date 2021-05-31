#!/bin/bash
#download from https://github.com/trojan-gfw/trojan/releases

proxychains4 wget https://github.com/trojan-gfw/trojan/releases/download/v1.16.0/trojan-1.16.0-linux-amd64.tar.xz
tar -xJvf trojan-1.16.0-linux-amd64.tar.xz
#cd trojan
cp ~/trojan/example/json_client.example ~/trojan/config.json
# vi ~/trojan/config.json
# remote_ip--gcp_ip, passwd; ssl "verify"--fasle
nohup ~/trojan/trojan -c ~/trojan/config.json 2>&1 &



