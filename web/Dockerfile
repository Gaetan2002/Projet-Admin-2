# Use the latest Ubuntu image as the base
FROM ubuntu:latest

# Set the environment variable to avoid prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update package lists and install necessary packages for Apache, PHP, and MySQL support
RUN apt-get update && apt-get install -y apache2 php libapache2-mod-php php-mysql

# Copy virtual host configuration files for each site into the container
COPY site1.conf /etc/apache2/sites-available/site1.conf
COPY site2.conf /etc/apache2/sites-available/site2.conf
COPY site3.conf /etc/apache2/sites-available/site3.conf

# Enable virtual hosts for each site and disable the default site
RUN a2ensite site1.conf
RUN a2ensite site2.conf
RUN a2ensite site3.conf
RUN a2dissite 000-default.conf

# Expose the HTTP port 80 for the web server
EXPOSE 80

# Start Apache in the foreground to keep the container running
CMD ["apachectl", "-D", "FOREGROUND"]
