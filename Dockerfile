FROM nextcloud:24.0.5-apache

RUN apt-get update && apt-get install -y procps smbclient libsmbclient-dev && \
    pecl install smbclient && \
    docker-php-ext-enable smbclient && \
    rm -rf /var/lib/apt/lists/*

COPY smb.conf /etc/samba/smb.conf
