# Lisskha_infra
Lisskha Infra repository

bastion_IP = 34.90.72.45
someinternalhost_IP = 10.164.0.5

1. Bastion-host
На своей машине прописала в хосты:
$ cat /etc/hosts
34.90.72.45 bastion
10.164.0.5 someinternalhost

SSH Forwarding:
$ ssh-add -L
Key:
ssh-add ~/.ssh/yulka
SSH Connection:
$ ssh -i ~/.ssh/yulka -A yulka@bastion
Last login: Wed Sep 18 12:08:01 2019 from 46.231.212.67
[yulka@bastion ~]$ ssh 10.164.0.5
Last login: Wed Sep 18 12:05:56 2019 from bastion.europe-west4-a.c.infra-170919.internal
[yulka@someinternalhost ~]$

Для подключения одной строкой к someinternalhost использовала ssh tunnel:
ssh -L 9999:bastion:22 someinternalhost

Для подключения к someinternalhost таким образом - ssh someinternalhost - настроила .ssh/config:
Host bastion
  Hostname bastion
  User yulka
  IdentityFile ~/.ssh/yulka
Host someinternalhost
  Hostname someinternalhost
  User yulka
  ProxyCommand ssh -W %h:%p bastion
  IdentityFile ~/.ssh/yulka

2. VPN
Файл setupvpn.sh описывает установку VPN-сервера, устанавливает mongod и pritunl
Файл cloud-bastion.ovpn - конф файл для настройки OpenVPN клиента
Подключилась к VPN, проверила со своей машины:
$ ssh -i ~/.ssh/yulka yulka@10.164.0.5
Last login: Wed Sep 18 12:09:41 2019 from bastion.europe-west4-a.c.infra-170919.internal
[yulka@someinternalhost ~]$

Валидный сертификат LE реализован для https://34.90.72.45.sslip.io

