#!/bin/bash
# -------------------------------------------------------------------
# Install middleware
# -------------------------------------------------------------------

# Install certbot
# ---------------------------------
# # install snap
yum install -y epel-release
# yum install -y snapd
# systemctl enable --now snapd.socket
# rm -rf /snap/snap
# ln -s /var/lib/snapd/snap /snap

# # update snap
# snap install core
# snap refresh core

# # install certbot
# snap install --classic certbot
# ln -s /snap/bin/certbot /usr/bin/certbot

# # install certbot plugin
# snap set certbot trust-plugin-with-root=ok
yum install -y certbot

# Install OpenSSL
# ---------------------------------
yum install -y openssl

