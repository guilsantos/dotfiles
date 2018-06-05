#!/bin/bash

echo "Installing NVM"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

echo "Nvm running"
sleep 3
. $HOME/.nvm/nvm.sh
sleep 3
nvm install node

npm install -g \
	gh \
	pm2
