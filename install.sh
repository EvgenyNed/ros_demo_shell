#!/usr/bin/env bash


clear
echo "==========================================================="
echo "*   Установка системных утилит и подготовка конфигурации  *"
echo "==========================================================="
#sudo yum install -y mc net-tools bind-utils telnet nc tcpdump sysstat unzip wget
sudo systemctl stop firewalld
sudo systemctl disable firewalld


echo
echo "========================"
echo "*   Установка Docker   *"
echo "========================"
sudo yum remove -y docker docker-client docker-client-latest docker-common \
                   docker-latest docker-latest-logrotate docker-logrotate docker-engine
sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce docker-ce-cli containerd.io
sudo systemctl start docker
sudo systemctl enable docker



echo
echo "==================================="
echo "*     Установка docker-compose    *"
echo "==================================="
[ -f /usr/local/bin/docker-compose ] && echo "docker-compose - уже установлен"
[ -f /usr/local/bin/docker-compose ] || \
    (sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" \
               -o /usr/local/bin/docker-compose && \
     sudo chmod +x /usr/local/bin/docker-compose && \
     sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose)


echo
echo "=============================================================="
echo "*    Установка Git и клонирование репозитория		    *"
echo "=============================================================="
prjname=ros_demo_shell
yum -y install git&&git clone https://github.com/EvgenyNed/$prjname.git
cd ~/$prjname


echo
echo "============================================================================================"
echo "*  Создание образа и запуск docker-compose *"
echo "============================================================================================"
docker-compose build
docker-compose up -d
