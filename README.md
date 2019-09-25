# Lisskha_infra repository by Yuliya Kharchenko 

## Table of contents
- [HW2. ChatOps](#HW2.ChatOps.)
- [HW3. GCP: Bastion Host, Pritunl VPN.](#HW3.GCP:BastionHost,PritunlVPN.)
    - [Bastion-host](#Bastion-host)
    - [VPN](#VPN)
- [HW4. GCP: Управление ресурсами через gcloud.](#HW4.GCP:Управлениересурсамичерезgcloud.)
    - [Доп. задание №1](#Доп.задание№1)
    - [Доп. задание №2](#Доп.задание№2)


# HW 2. ChatOps.
PR: https://github.com/Otus-DevOps-2019-08/Lisskha_infra/pull/2/files

# HW 3. GCP: Bastion Host, Pritunl VPN.
PR: https://github.com/Otus-DevOps-2019-08/Lisskha_infra/pull/3/files

## Bastion-host 
bastion_IP = 34.90.72.45  
someinternalhost_IP = 10.164.0.5  

На своей машине прописала в хосты:
```sh
$ cat /etc/hosts
    34.90.72.45 bastion
    10.164.0.5 someinternalhost
```

SSH Forwarding:
```sh
$ ssh-add -L
```
Key:
```sh
$ ssh-add ~/.ssh/yulka
```
SSH Connection:
```sh
$ ssh -i ~/.ssh/yulka -A yulka@bastion
Last login: Wed Sep 18 12:08:01 2019 from 46.231.212.67
[yulka@bastion ~]$ ssh 10.164.0.5
Last login: Wed Sep 18 12:05:56 2019 from bastion.europe-west4-a.c.infra-170919.internal
[yulka@someinternalhost ~]$
```
Для подключения одной строкой к someinternalhost использовала ssh tunnel:
```sh
$ ssh -L 9999:bastion:22 someinternalhost
```
Для подключения к someinternalhost таким образом - ssh someinternalhost - настроила .ssh/config:
```sh
Host bastion
  Hostname bastion
  User yulka
  IdentityFile ~/.ssh/yulka
Host someinternalhost
  Hostname someinternalhost
  User yulka
  ProxyCommand ssh -W %h:%p bastion
  IdentityFile ~/.ssh/yulka
```

## VPN
 - Файл setupvpn.sh описывает установку VPN-сервера, устанавливает mongod и pritunl
 - Файл cloud-bastion.ovpn - конф файл для настройки OpenVPN клиента
 - Подключилась к VPN, проверила со своей машины:
```sh
$ ssh -i ~/.ssh/yulka yulka@10.164.0.5
Last login: Wed Sep 18 12:09:41 2019 from bastion.europe-west4-a.c.infra-170919.internal
[yulka@someinternalhost ~]$
```

 - Валидный сертификат LE реализован для https://34.90.72.45.sslip.io

# HW 4. GCP: Управление ресурсами через gcloud.
PR: https://github.com/Otus-DevOps-2019-08/Lisskha_infra/pull/4/files

testapp_IP = 35.204.4.186  
testapp_port = 9292  

Скрипты для настройки системы и деплоя приложения:  
- install_ruby.sh  
- install_mongodb.sh  
- deploy.sh  

## Доп. задание №1

Скрипт, который запускается при создании инстанса:  
- startup_script.sh

Но для gcloud использую startup-script-url, команда для создания инстанса с запущенным приложением:  
```sh
gcloud compute instances create reddit-app2\
  --boot-disk-size=10GB \
  --image-family ubuntu-1604-lts \
  --image-project=ubuntu-os-cloud \
  --machine-type=g1-small \
  --tags puma-server \
  --restart-on-failure \
  --metadata startup-script-url=https://gist.githubusercontent.com/Lisskha/f2ddcaa2c9c198e5dda445b7618eee3a/raw/e19b453ef7ec95e7512997152b1ef9f6f00066d5/startup_script.sh
```

## Доп. задание №2

Создаем правило default-puma-server для firewall из консоли: 
```sh
gcloud compute firewall-rules create default-puma-server\
  --allow=tcp:9292 \
  --target-tags=puma-server \
  --direction=INGRESSS
```
