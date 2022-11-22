#!/bin/bash

if [ "$(id -u)" != "0" ]
then
	echo "Sorry, you are not root."
	exit 1
fi

CHKASSETS="chkassets"

APP_PATH="/opt/betty"
BIN_PATH="/usr/local/bin"

echo -e "Installing binaries.."

mkdir -p "${APP_PATH}"

cp "${CHKASSETS}" "${APP_PATH}/${CHKASSETS}"

chmod +x "${APP_PATH}/${CHKASSETS}"

ln -s "${APP_PATH}/${CHKASSETS}" "${BIN_PATH}/${CHKASSETS}"

echo -e "All set."
