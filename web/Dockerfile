FROM ubuntu:latest

RUN apt-get update && apt-get install -y apache2

# Copy virtual host configuration files
COPY site1.conf /etc/apache2/sites-available/site1.conf
COPY site2.conf /etc/apache2/sites-available/site2.conf
COPY site3.conf /etc/apache2/sites-available/site3.conf

# Enable virtual hosts and disable the default site
RUN a2ensite site1.conf
RUN a2ensite site2.conf
RUN a2ensite site3.conf
RUN a2dissite 000-default.conf

# Expose the HTTP port
EXPOSE 80

# Start Apache in the foreground
CMD ["apachectl", "-D", "FOREGROUND"]
