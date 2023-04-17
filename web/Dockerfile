# Dockerfile for Apache Web Server
FROM ubuntu:latest

# Install the Apache web server software
RUN apt-get update && apt-get install -y apache2

# Set the ServerName directive to suppress the warning message
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Copy any custom configuration or website files
# COPY my_site.conf /etc/apache2/sites-available/my_site.conf
# COPY html/ /var/www/html/

# Enable custom site (if needed)
# RUN a2ensite my_site.conf && a2dissite 000-default

# Expose the HTTP port
EXPOSE 80/tcp

# Start the Apache web server when the container starts
CMD ["apachectl", "-D", "FOREGROUND"]
