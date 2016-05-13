if test ! $(which spoof)
then
  sudo npm install spoof -g
fi

sudo npm install -g bower grunt-cli node-inspector yo generator-gadget node-gyp

mkdir ~/.nvm

# Replicated from nvm.zsh
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

nvm install 4
