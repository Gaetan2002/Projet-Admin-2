# Use the catatnight/postfix base image
FROM catatnight/postfix:latest

# Set environment variables
ENV maildomain=l1-6.ephec-ti.be
ENV smtp_user=user:password

RUN apt-get update && \
    apt-get install -y mailutils

# Create a virtual alias map file
RUN echo "contact@woodytoys.be secretariat@l1-6.ephec-ti.be" >> /etc/postfix/virtual && \
    echo "b2b@woodytoys.be commercial@l1-6.ephec-ti.be" >> /etc/postfix/virtual && \
    postmap /etc/postfix/virtual

# Configure Postfix to use the virtual alias map
RUN echo "virtual_alias_maps = hash:/etc/postfix/virtual" >> /etc/postfix/main.cf

# Expose the port

# Expose the port
EXPOSE 25/tcp
