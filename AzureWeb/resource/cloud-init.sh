#!/bin/bash
#---------------------------------------------------
# Azure VM custom data (= cloud-init)
# VM Scale Set startup scripts.
#---------------------------------------------------

#---------------------------------------------------
# Modify following values.
STORAGE_ACCOUNT_NAME={STORAGE_ACCOUNT_NAME}
STORAGE_CONTAINER_NAME={STORAGE_CONTAINER_NAME}
CWD=/home/azureuser
#---------------------------------------------------
INITENV_NAME=load-params
LATEST_FILE_NAME=latest
APP_NAME=tastylog

# Log output setting
LOGFILE="/var/log/initialize.log"
exec > "${LOGFILE}"
exec 2>&1

# Change current work directory
cd ${CWD}

# az login
az login --identity --allow-no-subscription > /dev/null

# Initialize environment
# ---------------------------------
systemctl enable ${INITENV_NAME}
systemctl start ${INITENV_NAME}

# Install and initialize "tastylog"
# ---------------------------------
# Get latest version number.
az storage blob download \
  --auth-mode login \
  --account-name ${STORAGE_ACCOUNT_NAME} \
  --container-name ${STORAGE_CONTAINER_NAME} \
  --name ${LATEST_FILE_NAME} \
  --file ${LATEST_FILE_NAME}

VERSION=$(cat ./${LATEST_FILE_NAME})

# Download latest application
az storage blob download \
  --auth-mode login \
  --account-name ${STORAGE_ACCOUNT_NAME} \
  --container-name ${STORAGE_CONTAINER_NAME} \
  --name ${APP_NAME}-${VERSION}.tar.gz \
  --file ${APP_NAME}-${VERSION}.tar.gz

# Decompress tar.gz
rm -rf ${CWD}/${APP_NAME}
tar -zxvf "${CWD}/${APP_NAME}-${VERSION}.tar.gz"
chmod +x ${APP_NAME}

# Install application
rm -rf /opt/${APP_NAME}
mkdir -p /opt/${APP_NAME}/logs
chmod +x /opt/${APP_NAME}/logs
mv ${CWD}/${APP_NAME} /opt/${APP_NAME}

# Execute application
systemctl enable tastylog
systemctl start tastylog

