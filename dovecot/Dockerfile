# Use the dovecot/dovecot image
FROM dovecot/dovecot:latest

# Set environment variables
ENV maildomain=woodytoys.test
ENV smtp_user=user:password

# Install mailutils for testing purposes
RUN apt-get update && \
    apt-get install -y mailutils

# Expose IMAP and IMAPS ports
EXPOSE 143/tcp
EXPOSE 993/tcp
