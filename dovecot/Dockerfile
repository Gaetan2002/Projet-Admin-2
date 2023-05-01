# Use the dovecot/dovecot image
FROM dovecot/dovecot:latest

# Set environment variables
ENV maildomain=l1-6.ephec-ti.be
ENV smtp_user=user:password

# Install mailutils for testing purposes
RUN apt-get update && \
    apt-get install -y mailutils

# Expose IMAP and IMAPS ports
EXPOSE 143/tcp
EXPOSE 993/tcp
