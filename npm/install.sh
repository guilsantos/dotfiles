#!/bin/bash

echo "Nvm running"
sleep 3
source $HOME/.zshrc
sleep 3
nvm install node

npm install -g \
	gh \
	pm2 \
	express-generator \
	create-react-app \
	http-server	
