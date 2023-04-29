# Use the latest Ubuntu image as the base
FROM ubuntu:latest

# Set the environment variable to avoid prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install necessary packages for Apache, PHP, and MySQL support
RUN apt-get update && apt-get install -y apache2 php libapache2-mod-php php-mysql

# Copy virtual host configuration files for each site into the container
COPY site1.conf /etc/apache2/sites-available/site1.conf
COPY b2b.conf /etc/apache2/sites-available/b2b.conf
COPY erp.conf /etc/apache2/sites-available/erp.conf

# Enable virtual hosts for each site and disable the default site
RUN a2ensite site1.conf
RUN a2ensite b2b.conf
RUN a2ensite erp.conf
RUN a2dissite 000-default.conf

# Expose the HTTP port 80 for the web server
EXPOSE 80

# Start Apache in the foreground to keep the container running
CMD ["apachectl", "-D", "FOREGROUND"]
