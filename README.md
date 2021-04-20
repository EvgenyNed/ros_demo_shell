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
- Процесс установки полностью автоматизированный и включает в себя предварительную установку необходимого ПО на HOST машину, клонирование репозитория с описанием образов, сборка образов и запуск контейнеров. Установки может занять длительное время - необходимо запастить терпением.
- Скопируйте файл `install.sh` на компьютер, с которого собираетесь проводить удаленную установку и запустите его через SSH:
 ```
    cat install.sh  | ssh –T root@hostname
    `cat install.sh  | ssh –T root@hostname`
    
```
  #####   `curl -L "https://github.com/EvgenyNed/ros_demo_shell/blob/master/install.sh" -o ./install.sh && sudo chmod +x ./install.sh`
  #####   `cat install.sh  | ssh –T root@hostname`  
### Server URL's
- Webserver (main) `http://localhost:8832`
      
