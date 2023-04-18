#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

# Install Postfix with the "Internet Site" configuration
debconf-set-selections <<< "postfix postfix/mailname string woodytoys.test"
debconf-set-selections <<< "postfix postfix/main_mailer_type select Internet Site"
apt-get update
apt-get install -y postfix

# Update main.cf with your domain
postconf -e "myhostname = woodytoys.test"
