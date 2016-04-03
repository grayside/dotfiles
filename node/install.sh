if test ! $(which spoof)
then
  sudo npm install spoof -g
fi

sudo npm install -g bower grunt-cli node-inspector yo generator-gadget

nvm install 4
