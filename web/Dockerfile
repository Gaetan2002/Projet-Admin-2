FROM ubuntu:latest

RUN apt-get update && apt-get install -y apt-utils apache2

# Create DocumentRoot directories
RUN mkdir -p /site1 /site2 /site3

# Copy virtual host configuration files
COPY site1.conf /etc/apache2/sites-available/site1.conf
COPY site2.conf /etc/apache2/sites-available/site2.conf
COPY site3.conf /etc/apache2/sites-available/site3.conf

# Enable virtual hosts
RUN a2ensite site1.conf
RUN a2ensite site2.conf
RUN a2ensite site3.conf

# Disable default site
RUN a2dissite 000-default.conf

# Enable mod_rewrite
RUN a2enmod rewrite

# Restart Apache
RUN service apache2 restart

EXPOSE 80/tcp

CMD ["apachectl", "-D", "FOREGROUND"]