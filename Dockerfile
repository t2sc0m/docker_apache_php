FROM adite/base
MAINTAINER tescom <tescom@atdt01410.com>

# Install base packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -yq upgrade && \
    apt-get -yq install \
                mysql-client \
                apache2 \
                libapache2-mod-php5 \
                php5-apcu \
                php5-cli \
                php5-curl \
                php5-gd \
                php5-mcrypt \
                php5-mysql \
                php5-intl \
                php5-json \
                php5-sqlite \
                php5-mongo \
                php5-xsl \
                zip unzip gpsbabel acl && \
    rm -rf /var/lib/apt/lists/*

# Add apache default.conf
ADD default-vhost.conf /etc/apache2/sites-available/000-default.conf

# Enable apache modules
RUN a2enmod rewrite php5 vhost_alias headers

#  Add php config 
ADD php.ini /etc/php5/mods-available/overrides.ini

# Enable php modules
RUN php5enmod apcu curl gd mcrypt mongo mysql intl json xsl overrides/99

EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", " FOREGROUND"]
