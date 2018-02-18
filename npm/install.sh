#!/bin/bash

echo "Nvm running"
. $HOME/.nvm/nvm.sh

nvm install node

npm install -g \
	gh \
	pm2 \
	express-generator \
	create-react-app \
	http-server	
