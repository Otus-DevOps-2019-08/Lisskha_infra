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
    - [Самостоятельное задание №1](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#%D1%81%D0%B0%D0%BC%D0%BE%D1%81%D1%82%D0%BE%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D0%B5-%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5-1 "Самостоятельное задание")
    - [Самостоятельное задание №2](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#%D1%81%D0%B0%D0%BC%D0%BE%D1%81%D1%82%D0%BE%D1%8F%D1%82%D0%B5%D0%BB%D1%8C%D0%BD%D0%BE%D0%B5-%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5-2 "Самостоятельное задание")
    - [Доп. задание №1](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#%D0%B4%D0%BE%D0%BF-%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5-1-2 "Доп. задание №1")
    - [Доп. задание №2](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#%D0%B4%D0%BE%D0%BF-%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5-2-2 "Доп. задание №1") 
- [HW8. Ansible: Основы основ](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#hw-8-ansible-%D0%BE%D1%81%D0%BD%D0%BE%D0%B2%D1%8B-%D0%BE%D1%81%D0%BD%D0%BE%D0%B2 "Ansible: Основы основ")
    - [Выполнение команд](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#%D0%B2%D1%8B%D0%BF%D0%BE%D0%BB%D0%BD%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BA%D0%BE%D0%BC%D0%B0%D0%BD%D0%B4 "Выполнение команд")
    - [Доп. задание](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#%D0%B4%D0%BE%D0%BF-%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5-3)
- [HW9. Ansible: Деплой и управление конфигурацией](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#hw-9-ansible-%D0%B4%D0%B5%D0%BF%D0%BB%D0%BE%D0%B9-%D0%B8-%D1%83%D0%BF%D1%80%D0%B0%D0%B2%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5-%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B3%D1%83%D1%80%D0%B0%D1%86%D0%B8%D0%B5%D0%B9)
    - [Доп. задание](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#%D0%B4%D0%BE%D0%BF-%D0%B7%D0%B0%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5-3)
- [HW10. Ansible: Работа с ролями и окружениями]()
    - [Доп. задание]()



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

[Вернуться к содержанию ^](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#table-of-contents)

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

[Вернуться к содержанию ^](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#table-of-contents)

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

[Вернуться к содержанию ^](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#table-of-contents)

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

[Вернуться к содержанию ^](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#table-of-contents)

# HW 7. Terraform. Modules
PR: https://github.com/Otus-DevOps-2019-08/Lisskha_infra/pull/9/files

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

## Самостоятельное задание №1

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
## Самостоятельное задание №2
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

[Вернуться к содержанию ^](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#table-of-contents)

# HW 8. Ansible: Основы основ

PR: https://github.com/Otus-DevOps-2019-08/Lisskha_infra/pull/10/files  

Установлены Python 2.7.10, pip 19.2.2 from /Library/Python/2.7/site-packages/pip (python 2.7), ansible 2.7.7  

Подняла инфраструктуру в окружении stage и проверила подключение по ssh к машине с приложением:
```sh
ansible]$ cd ../terraform/stage/
terraform init
terraform apply
ssh 104.199.111.114
```
Создала [инвентори файл](https://gist.githubusercontent.com/Lisskha/ce7eb22264c549630f675dcae75c03d8/raw/de5ebdec296522b8c4dc87b074e4fedaa711891d/ansible%2520inventory%2520for%2520app) и проверила, что Ansible может управлять хостом:
```sh
stage]$ cd ../../ansible/
vim inventory
ansible appserver -i ./inventory -m ping
appserver | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
```
 - **appserver** - краткое имя, которое идентифицирует хост
 - **-m ping** - вызываемый модуль. Ping-модуль позволяет протестировать SSH-соединение
 - **-i ./inventory** - путь до файла инвентори

Для инстанса с БД сделала то же самое, добавила dbserver в [инвентори файл](https://gist.githubusercontent.com/Lisskha/ce7eb22264c549630f675dcae75c03d8/raw/de5ebdec296522b8c4dc87b074e4fedaa711891d/ansible%2520inventory%2520for%2520app%2520and%2520db), проверила соединение с ВМ:
```sh
stage]$ terraform show | grep nat_ip
            nat_ip       = "104.199.111.114"
            nat_ip       = "34.76.4.83"
ansible]$ vim inventory
ansible dbserver -i ./inventory -m ping
dbserver | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
```
 - **terraform show** - используется для того, чтобы найти внешний ip для инстанса с db в state файле терраформа

Создала конф.файл для Ansible - [ansible.cfg](https://gist.githubusercontent.com/Lisskha/ce7eb22264c549630f675dcae75c03d8/raw/de5ebdec296522b8c4dc87b074e4fedaa711891d/ansible.cfg)  
Из файла inventory удалила избыточную инфу, привела к виду:
```sh
appserver ansible_host=104.199.111.114
dbserver ansible_host=34.76.4.83
```
***Модуль command*** позволяет запускать команды на удаленном хосте:
```sh
ansible dbserver -m command -a uptime
dbserver | CHANGED | rc=0 >>
 20:59:06 up 31 min,  1 user,  load average: 0.00, 0.00, 0.00
```
 - **-a** - опция, которая передает команду как аргумент для модуля command

Определила группу хостов в [инвентори файле](https://gist.githubusercontent.com/Lisskha/ce7eb22264c549630f675dcae75c03d8/raw/de5ebdec296522b8c4dc87b074e4fedaa711891d/inventory%2520with%2520name%2520group%2520hosts) и проверила работу Ansible с группой хостов:
```sh
ansible app -m ping
appserver | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
```
 - **app** - имя группы
 - **-m ping** - имя модуля Ansible
 - **appserver** - имя сервера в группе, для которого применился модуль

Можно юзать yaml для инвентори, создала файл [inventory.yml](https://gist.githubusercontent.com/Lisskha/ce7eb22264c549630f675dcae75c03d8/raw/de5ebdec296522b8c4dc87b074e4fedaa711891d/inventory.yml), проверила работоспособность:
```sh
ansible all -m ping -i inventory.yml
appserver | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
dbserver | SUCCESS => {
    "changed": false,
    "ping": "pong"
}
```
 - **Ключ -i** переопределяет путь к инвентори файлу  

## Выполнение команд
Проверяем, что на серверах в группе хостов app установлены ruby и bundler:
```sh
ansible app -m command -a 'ruby -v'
appserver | CHANGED | rc=0 >>
ruby 2.3.1p112 (2016-04-26) [x86_64-linux-gnu]

ansible app -m command -a 'bundler -v'
appserver | CHANGED | rc=0 >>
Bundler version 1.11.2
```
```sh
ansible app -m shell -a 'ruby -v; bundler -v'
appserver | CHANGED | rc=0 >>
ruby 2.3.1p112 (2016-04-26) [x86_64-linux-gnu]
Bundler version 1.11.2
```
 - **-m shell** - вызов модуля shell  
 
**!** ***Модуль command*** выполняет команды, не используя оболочку (sh, bash), поэтому в нем не работают перенаправления потоков и нет доступа к некоторым переменным окружения **!** 

Проверила статус mongod на серверах в группе хостов db:
```sh
ansible db -m shell -a 'systemctl status mongod'
dbserver | CHANGED | rc=0 >>
● mongod.service - High-performance, schema-free document-oriented database
   Loaded: loaded (/lib/systemd/system/mongod.service; enabled; vendor preset: enabled)
   Active: active (running) since Tue 2019-10-22 20:27:41 UTC; 53min ago
...

ansible db -m command -a 'systemctl status mongod'
dbserver | CHANGED | rc=0 >>
● mongod.service - High-performance, schema-free document-oriented database
   Loaded: loaded (/lib/systemd/system/mongod.service; enabled; vendor preset: enabled)
   Active: active (running) since Tue 2019-10-22 20:27:41 UTC; 54min ago
...
```
```sh
ansible db -m systemd -a name=mongod
dbserver | SUCCESS => {
    "changed": false,
    "name": "mongod",
    "status": {
    ...
        "ActiveState": "active",
...

ansible db -m service -a name=mongod
dbserver | SUCCESS => {
    "changed": false,
    "name": "mongod",
    "status": {
    ...
        "ActiveState": "active",
...
```
 - **Модуль systemd** - предназначен для управления сервисами
 - **Модуль service** - более универсален, будет работать и в более старых ОС с init.d-инициализацией  

Используем **модуль git** для клонирования репозитория на app сервер:
```sh
ansible app -m git -a 'repo=https://github.com/express42/reddit.git dest=/home/appuser/reddit'
```
повторное выполнение этой команды проходит успешно, только переменная changed будет false (что значит, что изменения не произошли)   
То же самое с модулем **command**:
```sh
ansible app -m command -a 'git clone https://github.com/express42/reddit.git /home/appuser/reddit'
```
повторное выполнение завершается ошибкой  
Для клонирования репы (аналогично предыдущим командам) написан и выполнен плейбук [clone.yml](https://gist.githubusercontent.com/Lisskha/ce7eb22264c549630f675dcae75c03d8/raw/de5ebdec296522b8c4dc87b074e4fedaa711891d/clone.yml):
```sh
vim clone.yml
ansible-playbook clone.yml
...
PLAY RECAP ****************************************************
appserver                  : ok=2    changed=0    unreachable=0    failed=0
```
Удалила каталог с репой на удаленной машине и еще раз прогнала плейбуку:
```sh
ansible app -m command -a 'rm -rf /home/appuser/reddit'
ansible-playbook clone.yml
...
PLAY RECAP ****************************************************
appserver                  : ok=2    changed=1    unreachable=0    failed=0
```
В этом случае применилось одно изменение - *TASK [Clone repo]*  
## Доп. задание

[Вернуться к содержанию ^](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#table-of-contents)

# HW 9. Ansible: Деплой и управление конфигурацией

PR: https://github.com/Otus-DevOps-2019-08/Lisskha_infra/pull/11/files

В модулях app и db (terraform/modules/app/main.tf, terraform/modules/db/main.tf) закомментила код провижининга.  
В .gitignore добавила *.retry - временные файлы ансибла.  
В директории ansible создала плейбуку [reddit_app.yml](https://gist.githubusercontent.com/Lisskha/a741425519601b5e951adbe5ced59b0d/raw/532a0c2f75c9ff78275357f2784339cca31b2126/add%2520handlers%2520in%2520reddit_app.yml) для управления конфигами и деплоя.  
Плейбука состоит из:  
 - plays (сценарии) - для группировки тасок, которые должны быть выполнены на конкретном хосте (группе хостов)
 - tasks (задания) - набор заданий, которые будут выполнены на хосте (группе хостов)
 - tags - возможность запускать отдельные таски, имеющие определенный тег
 - модуль template - юзаем, чтобы скопировать конфиг монги на удаленную машину

в плейбуке один сценарий, для управления всеми группами хостов. для разделения группы хостов - используеются теги (для какой группы выполнить таски).  
В директории templates создан файл [mongod.conf.j2](https://gist.githubusercontent.com/Lisskha/a741425519601b5e951adbe5ced59b0d/raw/532a0c2f75c9ff78275357f2784339cca31b2126/templates%2520mongod.conf.j2) - шаблон с параметризированным конфигом монги.  
Чекнула плейбуку:
```sh
ansible-playbook --check reddit_app.yml 
```
Чек только группы хостов:
```sh
ansible-playbook --check reddit_app.yml --limit db
```
Применить плейбуку только для группы хостов:
```sh
ansible-playbook reddit_app.yml --limit db
```
  
Создала каталог files, добавила файл [puma.service](https://gist.githubusercontent.com/Lisskha/a741425519601b5e951adbe5ced59b0d/raw/327a3bfef88e7b13fdcf6d802164e12917dda7a2/files%2520puma.service)  

Итоговая плейбука в файле [reddit_app_one_play.yml](https://gist.githubusercontent.com/Lisskha/a741425519601b5e951adbe5ced59b0d/raw/57292393ed37ecfeaab09d2fcb2486e5756fd417/reddit_app_one_play.yml)
 - модуль copy - для копирования файла на удаленный хост
 - модуль systemd - для настройки автостарта puma-сервера
 - новый handler - для reload puma
 - шаблон templates/db_config.j2 - копируется на удаленный хост и данный шаблон содержит присвоение переменной DATABASE_URL значения, которое указано в переменной db_host (внутренний ip VM с монго)
 - модуль git - для клонирования последней версии кода приложения
 - модуль bundler - для установки зависимых Ruby Gems через bundle  

После добавления шаблона [db_config.j2](https://gist.githubusercontent.com/Lisskha/a741425519601b5e951adbe5ced59b0d/raw/71ea361c29436cc4cc84d01fb693d93ed6ef39e9/db_config.j2), чек и прогон плейбуки:
```sh
ansible-playbook reddit_app.yml --check --limit app --tags app-tag
ansible-playbook reddit_app.yml --limit app --tags app-tag
```
После добавления тасок для деплоя, чек и прогон плейбуки:
```sh
ansible-playbook reddit_app.yml --check --limit app --tags deploy-tag
ansible-playbook reddit_app.yml --limit app --tags deploy-tag
```
Проверка что работает:
http://35.233.70.78:9292/post/5db23019566a7825db5c4bd  
зарегаться и сделать новый пост, перейти в него, перейти по указанной ссылке.

## Одна плейбука, несколько сценариев

Итоговый файл [reddit_app_multiple_plays.yml](https://gist.githubusercontent.com/Lisskha/a741425519601b5e951adbe5ced59b0d/raw/56081b585d442e0464ec5d8cbb2983576b2c082a/reddit_app_multiple_plays.yml)
 - name: Configure MongoDB - сценарий для MongoDB, собран из предыдущего файла по тегам db-tag
 - name: Configure App - сценарий для приложения, собран из предыдущего файла по тегам app-tag
 - name: Configure Deploy - сценарий для деплоя, собран по тегам deploy-tag

Пересоздала инфраструктуру, в каталоге terraform/stage/ 
```sh
terraform destroy
terraform apply
```
Поменяла ip в инвентарях  
Чек и запуск плейбуки
```sh
ansible-playbook reddit_app2.yml --tags app-tag --check
ansible-playbook reddit_app2.yml --tags app-tag
```

## Несколько плейбуков

 - [app.yml](https://gist.githubusercontent.com/Lisskha/a741425519601b5e951adbe5ced59b0d/raw/035956b7dc6dce7cecb45c0017e3595e406c1e51/app.yml)
 - [db.yml](https://gist.githubusercontent.com/Lisskha/a741425519601b5e951adbe5ced59b0d/raw/035956b7dc6dce7cecb45c0017e3595e406c1e51/db.yml)
 - [deploy.yml](https://gist.githubusercontent.com/Lisskha/a741425519601b5e951adbe5ced59b0d/raw/035956b7dc6dce7cecb45c0017e3595e406c1e51/deploy.yml)  

Перенесла необходимые сценарии в плейбуки, удалила теги и создала основной плейбук [site.yml](https://gist.githubusercontent.com/Lisskha/a741425519601b5e951adbe5ced59b0d/raw/76a007521a59e225b1e79480317928f417ef3b0b/site.yml)  
Пересоздала инфраструктуру stage и прогнала плейбуку:
```sh
terraform destroy
terraform apply

ansible-playbook site.yml --check
ansible-playbook site.yml
```

## Провижининг в Packer

Создала плейбуки:
 - [packer_app.yml](https://gist.githubusercontent.com/Lisskha/a741425519601b5e951adbe5ced59b0d/raw/4516c8952ca323b408c662cc7b0a00f45d408a55/packer_app.yml) - устанавливает Ruby и Bundler
 - [packer_db.yml](https://gist.githubusercontent.com/Lisskha/a741425519601b5e951adbe5ced59b0d/raw/4516c8952ca323b408c662cc7b0a00f45d408a55/packer_db.yml) - добавляет репозиторий MongoDB, устанавливает ее и включает сервис.
   - модуль apt - устанавливает необходимые пакеты
   - модуль apt_key - добавляет ключ для репозитория
   - модуль apt_repository - устанавливает репозиторий
   - модуль systemd - активирует и запускает монгу

Поменяла провижинеров в пакере - вместо bash-скриптов прописала ansible-плейбуки.  
В образе packer/app.json:
```sh
"provisioners": [
    {
        "type": "ansible",
        "playbook_file": "ansible/packer_app.yml"
    }
]
```
В образе packer/db.json:
```sh
"provisioners": [
    {
        "type": "ansible",
        "playbook_file": "ansible/packer_db.yml"
    }
]
```

В GCP удалила образы и из корня своей репы выполнила билд образов с новыми провижинерами:
```sh
packer build -var-file packer/variables.json packer/app.json
packer build -var-file packer/variables.json packer/db.json
```
Пересоздала stage окружение (в каталоге terraform/stage/):
```sh
terraform destroy
terraform apply
```
Запустила плейбуку для конфигурации окружения и деплоя:
```sh
ansible-playbook site.yml
```

## Доп. задание

[Вернуться к содержанию ^](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#table-of-contents)

# HW 10. Ansible: Работа с ролями и окружениями

Роли - для группировки и переиспользования конфигурационного кода в Ansible.  
Ролями можно делиться и брать у сообщества в [Ansible Galaxy](https://galaxy.ansible.com/).  
Доки по Galaxy есть на [сайте](https://galaxy.ansible.com/docs/). И справку можно получить так:
```sh
ansible-galaxy -h
```
Создать структуры ролей:
```sh
mkdir roles && cd roles
ansible-galaxy init app
ansible-galaxy init db
```
```sh
ll db/
-rw-r--r--   1 yulka  staff  1328 Nov  9 17:48 README.md
drwxr-xr-x   3 yulka  staff    96 Nov  9 17:48 defaults   <-- Дира для переменных по дефолту
drwxr-xr-x   2 yulka  staff    64 Nov  9 17:48 files
drwxr-xr-x   3 yulka  staff    96 Nov  9 17:48 handlers
drwxr-xr-x   3 yulka  staff    96 Nov  9 17:48 meta       <-- Информация о роли, создателе и зависимостях
drwxr-xr-x   3 yulka  staff    96 Nov  9 17:48 tasks      <-- Дира для тасок
drwxr-xr-x   2 yulka  staff    64 Nov  9 17:48 templates
drwxr-xr-x   4 yulka  staff   128 Nov  9 17:48 tests
drwxr-xr-x   3 yulka  staff    96 Nov  9 17:48 vars       <-- Дира для переменных, которые не должны переопределяться юзерами
```
**Настройка роли для DB:**
 - Скопировала секцию tasks из ansible/db.yml в roles/db/tasks/main.yml
 - Из директории ansible/templates скопировала шаблон mongod.conf.j2 в директорию roles/db/templates/
 - В roles/db/tasks/main.yml теперь можно указать источник без полного пути - src:  mongod.conf.j2
 - Скопировала хендлер из ansible/db.yml в roles/db/handlers/main.yml
 - Определила переменные в roles/db/defaults/main.ym  

**Настройка роли для APP:**
 - По аналогии с ролью db, выполняются действия в roles/app/ 
 
В файлах app.yml и db.yml убрала секции с тасками и хендлерами, добавила секции вызова роли.  
Пересоздала stage окружение, поменяла ip адреса для db и app в inventory и в app.yml, прогнала плейбуку site.yml  
Проверила - http://35.205.72.248:9292/  

**Настройка окружения**  
 - В каталоге ansible/ создала диры environments/stage и environments/prod
 - Скопировала файл ansible/inventory в каталоги окружений и удалила сам файл
 - т.к. теперь два файла инвентори, то при запуске плейбуки нужно указывать какой использовать:
 ```sh
 ansible-playbook -i environments/prod/inventory deploy.yml
 ```
 - Директория group_vars (созданная в дире плейбука или инвентаря) позволяет создавать файлы для определения переменных для группы хостов (имена должны соответствовать названиям групп в инвентаре) 
   - В файл environments/stage/group_vars/app скопировала определение переменной db_host из app.yml (в app.yml удалила весь раздел vars)
   - В файл environments/stage/group_vars/db скопировала определение переменной mongo_bind_ip из db.yml (в db.yml удалила весь раздел vars)
   - Создала файл environments/stage/group_vars/all с переменными для группы all
   - Для prod'а всё то же самое
 - Добавила дефолтный энв roles/app/defaults/main.yml (в роли db то же самое)
 - Добавила в таски вывод окружения, в котором работаем (roles/app/tasks/main.yml и в db):
 ```sh
 - name: Show info about the env this host belongs to
  debug:
    msg: "This host is in {{ env }} environment!!!"
 ```
 - Подправила файл [ansible.cfg](https://gist.githubusercontent.com/Lisskha/3c75267e085c58b116dd17deb245ab3b/raw/fedd6924cbc60a7cae9533fd1c86c6254faa6ce6/ansible.cfg)
 - Чек и запуск
 ```sh
 ansible-playbook playbooks/site.yml --check
 ansible-playbook playbooks/site.yml
 ```
```sh
PLAY RECAP *******************************************
appserver                  : ok=11   changed=8    unreachable=0    failed=0
dbserver                   : ok=4    changed=2    unreachable=0    failed=0
```

**Работа с Community-ролями**
 - В окружения prod и stage добавлен файл [requirements.yml](https://gist.githubusercontent.com/Lisskha/3c75267e085c58b116dd17deb245ab3b/raw/ba1290c06f5ea8e8f2325a18f5717ea4e8843975/environments%2520stage%2520requirements.yml)
 - Установка роли:
 ```sh
 ansible-galaxy install -r environments/stage/requirements.yml
 ```
 - Дока по роли [jdauphant.nginx](https://github.com/jdauphant/ansible-role-nginx)
 - Добавила в environments/stage/group_vars/app и environments/prod/group_vars/app переменные:
 ```sh
 nginx_sites:
  default:
    - listen 80
    - server_name "reddit"
    - location / {
        proxy_pass http://127.0.0.1:9292;
      }
 ```
 - В конфигурации Terraform добавила открытие 80 порта (в [модуле app](https://gist.githubusercontent.com/Lisskha/3c75267e085c58b116dd17deb245ab3b/raw/677ef5132754acd3b7f19b00bc81c2aea1c5dd31/terraform%2520modules%2520app%2520main.tf))
 - Добавила вызов роли jdauphant.nginx в плейбуку app.yml
 - Пересоздала инфраструктуру stage и прогнала плейбуку site.yml 
```sh
ansible-playbook playbooks/site.yml --check
ansible-playbook playbooks/site.yml
```
## Работа с Ansible Vault
Для безопасной работы с приватными данными используется [Ansible Vault](https://docs.ansible.com/ansible/devel/user_guide/vault.html)  
Для шифрования используется мастер-пароль **vault key**  
Его нужно передавать команде ansible-playbook при запуске, либо указать файл с ключом в ansible.cfg.  
```sh
!!! Нельзя хранить ключ-файл в Git !!!
```
Желательно использовать разные vault key для разных окружений.  
 - В ansible.cfg добавила строку:
 ```sh
 vault_password_file = ~/.ansible/vault.key
 ```
 - Создала плейбуку [users.yml](https://gist.githubusercontent.com/Lisskha/3c75267e085c58b116dd17deb245ab3b/raw/555c7cc335179f5ef7433fa25eaec58c67e615e4/playbooks%2520users.yml)
 - Создала файлы с данными пользователей для [prod](https://gist.githubusercontent.com/Lisskha/3c75267e085c58b116dd17deb245ab3b/raw/7f3a8e152932f22930ac0e5588fbb5ce9fb6b545/prod%2520credentials.yml) и [stage](https://gist.githubusercontent.com/Lisskha/3c75267e085c58b116dd17deb245ab3b/raw/7f3a8e152932f22930ac0e5588fbb5ce9fb6b545/stage%2520credentials.yml)
 - Зашифровала вышеупомянутые файлы:
 ```sh
$ ansible-vault encrypt environments/prod/credentials.yml
Encryption successful
$ ansible-vault encrypt environments/stage/credentials.yml
Encryption successful
```
 - Добавила вызов плейбуки users.yml в playbooks/site.yml и прогнала плейбуку site.yml  
 - На виртуалке в конфиге ssh (/etc/ssh/sshd_config) разрешила подключение по паролю, проверила подключение под юзером qauser:
 ```sh
 $ ssh qauser@35.233.70.78
qauser@35.233.70.78's password:

Welcome to Ubuntu 16.04.6 LTS (GNU/Linux 4.15.0-1047-gcp x86_64)
 ```

[Вернуться к содержанию ^](https://github.com/Otus-DevOps-2019-08/Lisskha_infra#table-of-contents)

