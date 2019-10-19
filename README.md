# Lisskha_infra repository by Yuliya Kharchenko 

## Table of contents
- [HW2. ChatOps](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#hw-2-chatops "ChatOps")
- [HW3. GCP: Bastion Host, Pritunl VPN](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#hw-3-gcp-bastion-host-pritunl-vpn "GCP: Bastion Host, Pritunl VPN")
    - [Bastion-host](#Bastion-host)
    - [VPN](#VPN)
- [HW4. GCP: Управление ресурсами через gcloud](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#hw-4-gcp-%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D1%80%D0%B5%D1%81%D1%83%D1%80%D1%81%D0%B0%D0%BC%D0%B8-%D1%87%D0%B5%D1%80%D0%B5%D0%B7-gcloud "GCP: Управление ресурсами через gcloud")
    - [Доп. задание №1](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#%D0%B4%D0%BE%D0%BF-%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5-1 "Доп. задание №1")
    - [Доп. задание №2](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#%D0%B4%D0%BE%D0%BF-%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5-2 "Доп. задание №2")
- [HW5. GCP: Image VM with Packer](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#hw-5-gcp-image-vm-with-packer "Image VM with Packer")
    - [Доп. задание](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#%D0%B4%D0%BE%D0%BF-%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5 "Доп. задание")
- [HW6. Terraform](https://github.com/Otus-DevOps-2019-08/Lisskha_infra/blob/master/README.md#hw-6-terraform "Terraform")
    - [Самостоятельное задание](https://github.com/Otus-DevOps-2019-08/Lisskha_infra/blob/master/README.md#%D1%81%D0%B0%D0%BC%D0%BE%D1%81%D1%82%D0%BE%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D0%B5-%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5 "Самостоятельное задание")
    - [Доп. задание №1](https://github.com/Otus-DevOps-2019-08/Lisskha_infra/blob/master/README.md#%D0%B4%D0%BE%D0%BF-%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5-1-1 "Доп. задание №1")
    - [Доп. задание №2](https://github.com/Otus-DevOps-2019-08/Lisskha_infra/blob/master/README.md#%D0%B4%D0%BE%D0%BF-%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5-2-1 "Доп. задание №2")
- [HW7. Terraform. Modules](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#hw-7-terraform-modules "Terraform. Modules")


# HW 2. ChatOps
PR: https://github.com/Otus-DevOps-2019-08/Lisskha_infra/pull/2/files

# HW 3. GCP: Bastion Host, Pritunl VPN
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

# HW 4. GCP: Управление ресурсами через gcloud
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

# HW 5. GCP: Image VM with Packer
PR: https://github.com/Otus-DevOps-2019-08/Lisskha_infra/pull/6/files

В каталог config-scripts перенесены скрипты из предыдущего ДЗ:  
deploy.sh  
install_mongodb.sh  
install_ruby.sh  
startup_script.sh  

Скачан packer и установлены креды:
```sh
brew install packer  
gcloud auth application-default login  
```

Packer шаблон, с помощью которого собираем *baked-образ* с предустановленными Ruby и MongoDB - packer/ubuntu16.json  
В секции **builders** описано создание ВМ для билда и создание имиджа.  
В секции **provisioners** описана установка ПО, настройка системы и конфигурация приложений.  

В каталог packer/scripts/ (указан в провижинерах) скопированы скрипты:  
install_mongodb.sh  
install_ruby.sh  

Проверка шаблона на ошибки и запуск билда:
```sh
packer validate ./ubuntu16.json  
packer build ubuntu16.json
```
Создан инстанс с помощью созданного образа.  
Запуск приложения:
```
ssh 34.68.156.211  
git clone -b monolith https://github.com/express42/reddit.git  
cd reddit && bundle install  
puma -d
```

В файле *variables.json* заданы обязательные переменные и файл добавлен в .gitignore  
В шаблоне *ubuntu16.json* были определены пользовательские переменные.  
Запуск билда:
```sh
packer build -var-file variables.json ubuntu16.json
```

## Доп. задание

Запускаем инстанс из созданного образа и на нем сразу же имеем запущенное приложение.  
 - Создан шаблон **immutable.json** с "image_family": "reddit-full".  
 - В файле packer/files/deploy.sh описана установка приложения, создание systemd unit и запуск приложения.  
 - Запуск билда:  
 ```sh
 packer build -var-file variables.json immutable.json
 ```
 - Создание ВМ из подготовленного образа из семейства reddit-full (скрипт лежит в файле config-scripts/create-reddit-vm.sh):  
 ```sh
 gcloud compute instances create reddit-app-full\
  --image-family reddit-full \
  --image-project=infra-170919 \
  --tags puma-server \
  --restart-on-failure
```

# HW 6. Terraform
PR: https://github.com/Otus-DevOps-2019-08/Lisskha_infra/pull/7/files

Установлен terraform:  
```sh
brew install terraform terraform-docs
```
В каталоге terraform добавлены конф файлы, которые содержат декларативное описание нашей инфраструктуры (**main.tf**), описание выходных переменных (**outputs.tf**), описание входных переменных (**variables.tf**), определение входных переменных (**terraform.tfvars**):  
- Секция *provider* позволяет управлять ресурсами GCP через API [gist](https://gist.githubusercontent.com/Lisskha/3c48b242074c58adba2360799643c0c5/raw/1304eb1748e4631c0de9884e5e8d660e8a43b56c/provider "gist")
- Секции *resource* необходимы для управления ресурсами различных сервисов GCP  
  - resource "google_compute_instance" "name" - для управления инстансами [gist](https://gist.githubusercontent.com/Lisskha/3c48b242074c58adba2360799643c0c5/raw/1304eb1748e4631c0de9884e5e8d660e8a43b56c/resource%2520%2522google_compute_instance%2522 "gist")
    - provisioner "name" - для запуска инструментов управления конфигурацией или начальной настройки системы
    - connection - параметры подключения провиженеров к VM
  - resource "google_compute_firewall" "name" - определить правило для фаерволла [gist](https://gist.githubusercontent.com/Lisskha/3c48b242074c58adba2360799643c0c5/raw/795e6b0207fd2aa5a5f8098f5afb4d79df666b49/Rule%2520for%2520firewall "gist") 
- Секция *output* для вывода выходных переменных [gist](https://gist.githubusercontent.com/Lisskha/3c48b242074c58adba2360799643c0c5/raw/1304eb1748e4631c0de9884e5e8d660e8a43b56c/outputs.tf "gist")
- Секция *variable* для описания входных переменных [gist](https://gist.githubusercontent.com/Lisskha/3c48b242074c58adba2360799643c0c5/raw/1304eb1748e4631c0de9884e5e8d660e8a43b56c/variables.tf "gist")
- Для определения входных переменных файл terraform.tfvars [gist](https://gist.githubusercontent.com/Lisskha/3c48b242074c58adba2360799643c0c5/raw/1304eb1748e4631c0de9884e5e8d660e8a43b56c/terraform.tfvars "gist")

Загружен провайдер:
```sh
terraform init
```
Посмотреть какие изменения terraform планирует произвести относительно состояния известных ему ресурсов (проверять после каждых изменений):
```sh
terraform plan
```
Запустить инстанс, описание характеристик которого находятся в файле main.tf (применять после изменений, можно без автоапрува):
```sh
terraform apply -auto-approve
```
Искать нужные атрибуты из state файла:
```sh
terraform show | grep nat_ip
           nat_ip       = "34.77.129.56"
```
Определить публичный ключ для инстанса можно в файле *main.tf* в секции **resource "google_compute_instance"** с помощью metadata  

Обновить значение выходной переменной:
```sh
terraform refresh
```
Посмотреть значение выходной переменной:
```sh
terraform output
terraform output app_external_ip
```
Пометить ресурс, который terraform должен пересоздать, при следующем запуске terraform apply:
```sh
terraform taint google_compute_instance.app
terraform plan
terraform apply
```
Удалить все созданные ресурсы:
```sh
terraform destroy
```

## Самостоятельное задание

Была определена input переменная для приватного ключа,
использующегося в определении подключения для провижинеров (connection):
- В terraform.tfvars добавлен параметр private_key_path с указанием пути до приватного ключа
- В variables.tf добавлена секция:
```sh
variable private_key_path {
  description = "Path to the private key used for connection"
}
```
- В main.tf получаем значение пользовательской переменной:
```sh
    private_key = file(var.private_key_path)
```

Была определена input переменная для задания зоны в ресурсе
"google_compute_instance" "app":
- В variables.tf добавлена секция:
```sh
variable zone {
  description = "Zone"
  # Значение по умолчанию
  default = "europe-west1-b"
}
```
- В main.tf получаем значение пользовательской переменной:
```sh
resource "google_compute_instance" "app" {
  ...
  zone         = var.zone
``` 

Все конф.файлы были отформатированы:
```sh
terraform fmt
```

Создан файл terraform.tfvars.example с переменными.

## Доп. задание №1

- Добавлен ssh ключ для юзера appuser1 в метаданные проекта. Для этого в файле main.tf перед ресурсом google_compute_instance создана секция *resource "google_compute_project_metadata_item" "ssh-keys"*:
```sh
resource "google_compute_project_metadata_item" "ssh-keys" {
  key   = "ssh-keys"
  value = "appuser1:${file(var.public_key_path)}"
}
```
Выполнен terraform apply  

- Добавлены ssh ключи для нескольких пользователей в метаданные проекта. Для этого в файле main.tf секция *resource "google_compute_project_metadata_item" "ssh-keys"* приведена к следующему виду:
```sh
resource "google_compute_project_metadata_item" "ssh-keys" {
  key   = "ssh-keys"
  value = "appuser:${file(var.public_key_path)} appuser1:${file(var.public_key_path)} appuser2:${file(var.public_key_path)}"
}
```
Выполнен terraform apply  

- В веб-интерфейсе, в метаданные проекта был добавлен юзер appuser_web. В консоли выполнила *terraform apply*, после чего юзер appuser_web удалился.

## Доп. задание №2
PR: https://github.com/Otus-DevOps-2019-08/Lisskha_infra/pull/8/files

Добавлен файл lb.tf [gist](https://gist.githubusercontent.com/Lisskha/3c48b242074c58adba2360799643c0c5/raw/058ffcf12827ea7b18c39867b38c6c8a5898596f/load%2520balancer "gist"), в котором описано создание HTTP балансировщика, правило форвардинга трафика на инстансы и хелсчек.  
В основной конфиг для терраформа (main.tf) добавлено условие для создания нескольких одинаковых инстансов:
```sh
resource "google_compute_instance" "app" {
  count        = length(var.names)
  name         = var.names[count.index]
```
В файл variables.tf добавлена переменная names:
```sh
variable "names" {
  type = list(string)
}
```
В файл terraform.tfvars добавлены значения для переменной names.  
В output переменные добавлены ip адрес второго инстанса и ip адрес балансера [gist](https://gist.githubusercontent.com/Lisskha/3c48b242074c58adba2360799643c0c5/raw/0bc89785938710ffbb1857d97e412b829d25b074/outputs%2520for%2520lb "gist")

Использовала - [compute_target_pool](https://www.terraform.io/docs/providers/google/r/compute_target_pool.html "compute_target_pool")

# HW 7. Terraform. Modules

Создаем инфраструктуру из прошлого ДЗ, в директории terraform:
```sh
terraform apply
```
По дефолту создается правило фаерволла для ssh, посмотреть можно так:
```sh
$ gcloud compute firewall-rules list

NAME               NETWORK  DIRECTION  PRIORITY  ALLOW  DENY  DISABLED
default-allow-ssh  default  INGRESS    1000      tcp:22       False
```
Добавили ресурс фаерволла в main.tf - [gist](https://gist.githubusercontent.com/Lisskha/a86416e908a967c6cac7798dbde1b71f/raw/f1cb0537a61e3647d86f887efbd0840990022ab0/resource%2520%2522google_compute_firewall%2522 "gist")  
При *terraform apply* возникла ошибка, чтобы ее избежать используем **import** (позволяет добавить инфу о созданном без помощи террика ресурсе в state файл):
```sh
terraform import google_compute_firewall.firewall_ssh default-allow-ssh
terraform apply
```
В main.tf добавляем ресурс google_compute_address для определения ip для ВМ с приложением в виде внешнего ресурса:
```sh
resource "google_compute_address" "app_ip" {
  name = "reddit-app-ip"
}
```
Удаляем старое и добавляем новое:
```sh
terraform destroy && terraform apply
```
Для того чтобы использовать созданный IP адрес в нашем ресурсе VM нам необходимо сослаться на атрибуты ресурса, который этот IP создает, внутри конфигурации ресурса VM.  
В ресурсе *google_compute_instance* определяем ip адрес для создаваемого инстанса:
```sh
network_interface {
 network = "default"
 access_config {
   nat_ip = google_compute_address.app_ip.address
 }
}
```
Здесь была неявная зависимость, но Terraform поддерживает также явную зависимость используя параметр [depends_on](https://www.terraform.io/docs/configuration/resources.html).
  
Разнесем приложение и DB на два разных инстанса. Идем в директорию packer, создаем там шаблоны [db.json](https://gist.githubusercontent.com/Lisskha/a86416e908a967c6cac7798dbde1b71f/raw/1731cd9d7813aac8427a921561fec49f4714eec1/packer%2520db.json "db.json") и [app.json](https://gist.githubusercontent.com/Lisskha/a86416e908a967c6cac7798dbde1b71f/raw/1731cd9d7813aac8427a921561fec49f4714eec1/packer%2520app.json "app.json"). 
Проверяем созданные конфиги и создаем образы:
```sh
packer validate app.json
packer validate db.json
packer build -var-file variables.json app.json
packer build -var-file variables.json db.json
```
Идем в директорию terraform, разобьем конфиг main.tf на несколько конфигов:
 - [app.tf](https://gist.githubusercontent.com/Lisskha/a86416e908a967c6cac7798dbde1b71f/raw/1731cd9d7813aac8427a921561fec49f4714eec1/app.tf "app.tf") для машины с приложением
 - [db.tf](https://gist.githubusercontent.com/Lisskha/a86416e908a967c6cac7798dbde1b71f/raw/1731cd9d7813aac8427a921561fec49f4714eec1/db.tf "db.tf") для машины с базой 
 - [vpc.tf](https://gist.githubusercontent.com/Lisskha/a86416e908a967c6cac7798dbde1b71f/raw/1731cd9d7813aac8427a921561fec49f4714eec1/vpc.tf "vpc.tf") сюда вынесли правило фаерволла для ssh (применимо для всех инстансов нашей сети) 

Объявляем переменные для имиджей с приложением и базой в [variables.tf](https://gist.githubusercontent.com/Lisskha/a86416e908a967c6cac7798dbde1b71f/raw/1731cd9d7813aac8427a921561fec49f4714eec1/variables.tf "variables.tf").  
Применяем все изменения - **terraform fmt && terraform apply**  
  
### На основе предыдущих конфигов, создаем модули.  
 1. Модуль для машины с базой данных
```sh
mkdir modules && cd modules
mkdir db && cd db
cp ../../db.tf main.tf
vim variables.tf
vim outputs.tf
```

   1.1 Файл [variables.tf](https://gist.githubusercontent.com/Lisskha/71b698be386a8ba75eb082e0152eec3a/raw/33234da8513f3506f7306b2ed3bc5e28575ee33a/terraform%2520modules%2520db%2520variables.tf)  
   1.2 Файл [main.tf](https://gist.githubusercontent.com/Lisskha/a86416e908a967c6cac7798dbde1b71f/raw/314dcc76ce6155b062721524c59e1f9089bc6c72/db%2520main.tf)  
 
 2. Модуль для машины с приложением
```sh
cd terraform/modules
mkdir app && cd app
cp ../../app.tf main.tf
vim variables.tf
vim outputs.tf
```

   2.1 Файл [variables.tf](https://gist.githubusercontent.com/Lisskha/a86416e908a967c6cac7798dbde1b71f/raw/cdc293e06d57347c41cfd79275bc963460ac6e0e/app%2520variables.tf)  
   2.2 Файл [main.tf](https://gist.githubusercontent.com/Lisskha/a86416e908a967c6cac7798dbde1b71f/raw/cdc293e06d57347c41cfd79275bc963460ac6e0e/app%2520main.tf)   
   2.3 Файл [outputs.tf](https://gist.githubusercontent.com/Lisskha/71b698be386a8ba75eb082e0152eec3a/raw/33234da8513f3506f7306b2ed3bc5e28575ee33a/terraform%2520modules%2520app%2520outputs.tf)   

Проверяем работу модулей, идем в каталог terraform, удаляем там файлы db.tf и app.tf. В файл main.tf вставляем блоки вызова модулей:
```sh
module "app" {
  source          = "./modules/app"
  project         = var.project
  public_key_path = var.public_key_path
  zone            = var.zone
  app_disk_image  = var.app_disk_image
}

module "db" {
  source          = "./modules/db"
  project         = var.project
  public_key_path = var.public_key_path
  zone            = var.zone
  db_disk_image   = var.db_disk_image
}
```
Чтобы загрузить модули в директорию .terraform и начать их использовать, выполняем команду:
```sh
terraform get
- app in modules/app
- db in modules/db
```
Приводим формат файлов в порядок и проверяем настройки:
```sh
Находясь в каталоге terraform выполняем
terraform fmt -recursive .
terraform plan
```

## Самостоятельное задание

Аналогично предыдущим модулям создан модуль vpc, в
котором определены настройки фаерволла
```sh
cd terraform/modules
mkdir vpc && cd vpc
cp ../../vpc.tf main.tf
vim variables.tf
vim outputs.tf
```
Модуль подключен в основном конфиге main.tf:
```sh
module "vpc" {
  source        = "./modules/vpc"
  project         = var.project
  public_key_path = var.public_key_path
  zone            = var.zone
}
```
В каталоге terraform удалила файл vpc.tf, отформатировала файлы, добавила модуль и применила настройки
```sh
rm vpc.tf
terraform fmt -recursive .
terraform get
terraform apply
```
Как проверить:
- В веб-морде gcp появилось правило фаерволла для ssh
- Зайти на машины по ssh

Параметризировала модуль vpc - в [main.tf](https://gist.githubusercontent.com/Lisskha/71b698be386a8ba75eb082e0152eec3a/raw/33234da8513f3506f7306b2ed3bc5e28575ee33a/terraform%2520modules%2520vpc%2520main.tf) добавила переменную:
```sh
resource "google_compute_firewall" "firewall_ssh" {
...
  source_ranges = var.source_ranges
}
```
В файл [variables.tf](https://gist.githubusercontent.com/Lisskha/71b698be386a8ba75eb082e0152eec3a/raw/33234da8513f3506f7306b2ed3bc5e28575ee33a/terraform%2520modules%2520vpc%2520variables.tf) добавлен блок (доступ с любого ip, если не указаного иного):
```sh
variable source_ranges {
  description = "Allowed IP addresses"
  default     = ["0.0.0.0/0"]
}
```
В блоке подключения модуля в основном конфиге добавила строку:
```sh
  source_ranges = ["55.111.222.7/32"]
```
Проверила все изменения - *terraform apply*  
Удалила созданные ресурсы - *terraform destroy*  
  
## Переиспользование модулей
В каталоге terraform созданы каталоги **stage** и **prod**, в них скопированы файлы (из каталога terraform) main.tf, variables.tf, outputs.tf, terraform.tfvars.  
В окружении ***stage*** открыт ssh доступ с любого ip адреса
```sh
module "vpc" {
  source          = "../modules/vpc"
  source_ranges   = ["0.0.0.0/0"]
  project         = var.project
  public_key_path = var.public_key_path
}
```
В окружении ***prod*** открыт ssh доступ только с моего ip
```sh
module "vpc" {
  source          = "../modules/vpc"
  project         = var.project
  public_key_path = var.public_key_path
  source_ranges   = ["55.111.222.7/32"]
}
```
В каждом окружении по очереди проверила работоспособность модуля vpc
```sh
terraform get
terraform init
terraform apply
terraform destroy
```
## Самостоятельное задание
Из каталога terraform удалила файлы main.tf, outputs.tf, terraform.tfvars, variables.tf.  
Дополнительно к тому, что уже было сделано ранее, параметризировала модули - в модулях app и db в ресурсе google_compute_instance добавила параметры
```sh
  name         = var.name
  machine_type = var.type
  zone         = var.zone
```
Определила их в variables.tf для каждого модуля
```sh
variable name {
  description = "Name VM"
  default     = "reddit-app"
}

variable type {
  description = "Type VM"
  default     = "g1-small"
}

variable zone {
  description = "Zone"
  default     = "europe-west1-b"
}
```
Для модуля db отличается только дефолтное значение имени инстанса
```sh
  default     = "reddit-db"
```
Для модуля vpc параметризировано только имя, в variables.tf добавила
```sh
variable name {
  description = "Name VM"
  default     = "default-allow-ssh"
}
```
## Использование реестра модулей от HashiCorp
https://registry.terraform.io/

Используем модуль [storage-bucket](https://registry.terraform.io/modules/SweetOps/storage-bucket/google/0.3.0) для создания бакета в сервисе Storage.  
В каталоге terraform создала файл [storage-bucket.tf](https://gist.githubusercontent.com/Lisskha/71b698be386a8ba75eb082e0152eec3a/raw/33234da8513f3506f7306b2ed3bc5e28575ee33a/terraform%2520storage-bucket.tf)  
Скопировала и подправила файлы 
```sh
cp stage/variables.tf .
cp stage/terraform.tfvars .
```
Отформатировала все файлы, подтянула модуль, проверила что планирует добавить terraform, применила настройки
```sh
terraform fmt -recursive .
terraform get
terraform init
terraform plan
terraform apply
```

## Доп. задание №1
Настроила хранение state файла в удаленном бекенде для окружений stage и prod. В обоих каталогах созданы файлы backend.tf
 - [stage/backend.tf](https://gist.githubusercontent.com/Lisskha/71b698be386a8ba75eb082e0152eec3a/raw/33234da8513f3506f7306b2ed3bc5e28575ee33a/terraform%2520stage%2520backend.tf)
 - [prod/backend.tf](https://gist.githubusercontent.com/Lisskha/71b698be386a8ba75eb082e0152eec3a/raw/33234da8513f3506f7306b2ed3bc5e28575ee33a/terraform%2520prod%2520backend.tf)

Для того чтобы отработал конфиг бекенда, достаточно в каждом каталоге выполнить
```sh
terraform init
```
После этого удалила state файлы в окружениях, запустила terraform по-очереди в каждом окружении
```sh
terraform init
terraform plan
terraform apply
terraform destroy
```

## Доп. задание №2
Использовала - https://www.terraform.io/docs/provisioners/index.html  
 - В модуль app добавлен провижинер для деплоя приложения, для этого используется ресурс ***null_resource***
```sh
resource "null_resource" "post-install" {
  connection {
    host        = google_compute_instance.app.network_interface.0.access_config.0.nat_ip
    type        = "ssh"
    agent       = false
    user        = "appuser"
    private_key = file(var.private_key_path)
  }

  provisioner "remote-exec" {
    inline = [
      "sudo echo DATABASE_URL=${var.db_reddit_ip} > /tmp/puma.env",
    ]
  }

  provisioner "remote-exec" {
      script = "${path.module}/files/deploy.sh"
  }
}
```
В первом блоке описано ssh подключение к создаваемой машине по ip адресу.  
В провижинерах закидываем переменную окружения DATABASE_URL в файл /tmp/puma.env на создаваемую машину, и затем запускаем скрипт деплоя, в котором описано скачивание, установка приложения, создание unit'а и запуск сервиса. Скрипт для деплоя лежит в каталоге с модулем - **modules/app/files/deploy.sh**  
 - В модуль db добавлен провижинер для редактирования конфига (меняем bindIp) и рестарта mongodb на создаваемой машине. В этом случае провижинера и настройки подключения добавляем в ресурс *google_compute_instance*
```sh
resource "google_compute_instance" "db" {
...
  provisioner "remote-exec" {
    inline = [
      "sudo sed -i 's/bindIp: 127.0.0.1/bindIp: 0.0.0.0/g' /etc/mongod.conf",
      "sudo systemctl restart mongod",
    ]
  }

  connection {
    host        = google_compute_instance.db.network_interface.0.access_config.0.nat_ip
    type        = "ssh"
    user        = "appuser"
    agent       = false
    private_key = file(var.private_key_path)
  }
}
```
 - Добавила определение переменной в *app/variables.tf*
```sh
variable db_reddit_ip {
  description = "IP MongoDB"
}
```
 - Добавила в db/outputs.tf вывод внутреннего ip машины с БД
```sh
output "internal_ip" {
  value = google_compute_instance.db.network_interface.0.network_ip
}
```
 - В окружениях stage и prod в main.tf добавила переменную
```sh
  db_reddit_ip     = module.db.internal_ip
```
 - В окружениях stage и prod в outputs.tf добавила вывод внешнего ip машины с приложением и внутренний ip машины с БД
```sh
output "app_ex_ip" {
  value = "${module.app.app_external_ip}"
}

output "db_int_ip" {
  value = "${module.db.internal_ip}"
}
```
 - Из каталога terraform отформатировала всё и применила изменения
```sh
terraform fmt -recursive .
terraform plan
terraform apply
terraform destroy
```

## Итоговые файлы
- Module App
  - [main.tf](https://gist.githubusercontent.com/Lisskha/71b698be386a8ba75eb082e0152eec3a/raw/33234da8513f3506f7306b2ed3bc5e28575ee33a/terraform%2520modules%2520app%2520main.tf)
  - [outputs.tf](https://gist.githubusercontent.com/Lisskha/71b698be386a8ba75eb082e0152eec3a/raw/33234da8513f3506f7306b2ed3bc5e28575ee33a/terraform%2520modules%2520app%2520outputs.tf)
  - [variables.tf](https://gist.githubusercontent.com/Lisskha/71b698be386a8ba75eb082e0152eec3a/raw/33234da8513f3506f7306b2ed3bc5e28575ee33a/terraform%2520modules%2520app%2520variables.tf)
  - [files/deploy.sh](https://gist.githubusercontent.com/Lisskha/71b698be386a8ba75eb082e0152eec3a/raw/33234da8513f3506f7306b2ed3bc5e28575ee33a/terraform%2520modules%2520app%2520files%2520deploy.sh)
- Module DB
  - [main.tf](https://gist.githubusercontent.com/Lisskha/71b698be386a8ba75eb082e0152eec3a/raw/33234da8513f3506f7306b2ed3bc5e28575ee33a/terraform%2520modules%2520db%2520main.tf)
  - [outputs.tf](https://gist.githubusercontent.com/Lisskha/71b698be386a8ba75eb082e0152eec3a/raw/33234da8513f3506f7306b2ed3bc5e28575ee33a/terraform%2520modules%2520db%2520outputs.tf)
  - [variables.tf](https://gist.githubusercontent.com/Lisskha/71b698be386a8ba75eb082e0152eec3a/raw/33234da8513f3506f7306b2ed3bc5e28575ee33a/terraform%2520modules%2520db%2520variables.tf)
