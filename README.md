# ros_demo_shell
Пример простой инфраструктуры, демонстрирующий возможность регистрации и авторизации на сайте и отображение информации из БД на базе микросервисов Apache и PostgreSQL   и балансировкой с помощью NginX.

## Используемые базовые образы
- NginX latest
- Debian 10.9 (PHP 7.3+Apache 2.4)
- PostgreSQL 9.6

## Системные требования
- CentOS 7 x86_64
- root доступ
## Установка
- Скопируйте файл `install.sh` на компьютер, с которого собираетесь проводить удаленную установку
- Выдайте права на исполнение и запустите скрипт через SSH
   `chmod +x ./install.sh`
   `cat install.sh  | ssh –T root@hostname`
- После установки запустятся сервисы. К Web приложению можно подключиться localhost:8832
        
        ## Usage
        ### How to start server
        `docker-compose run`
        ### How to login into containers console
        - Apache: `docker container exec -it apache_container bash`
        - PHP: `docker container exec -it php_container bash`
        - MySQL: `docker container exec -it mysql_container bash`
        - PHPMyAdmin: `docker container exec -it phpmyadmin_container bash`
        - MailDev: `docker container exec -it maildev_container bash`
        ### Server URL's
        - Webserver (main) http://localhost
        - PHPMyAdmin http://localhost:8080
        - MailDev http://localhost:8081
        
        
