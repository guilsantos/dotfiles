#!/bin/bash

echo "Nvm running"
source $HOME/.zshrc

nvm install node

npm install -g \
	gh \
	pm2 \
	express-generator \
	create-react-app \
	http-server	
