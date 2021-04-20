FROM debian:10.9

RUN DEBIAN_FRONTEND=noninteractive && apt-get update && \
    apt-get install -y apache2 php7.3 php7.3-common php7.3-opcache php7.3-zip  php7.3-gd php7.3-pgsql php7.3-pspell php7.3-recode php7.3-tidy php7.3-dev php7.3-intl php7.3-curl php7.3-xmlrpc php7.3-xsl php7.3-bz2 php7.3-mbstring && \
    ln -sf /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/rewrite.load

COPY apache2.conf /etc/apache2/
EXPOSE 80
WORKDIR /var/www/html
CMD apachectl -D FOREGROUND
