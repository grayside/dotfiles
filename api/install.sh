# API Blueprint tooling
if test ! $(which aglio)
then
  nvm unload
  sudo npm install -g aglio protagonist
  nvm use 4
fi

apm install language-api-blueprint
apm install linter-api-blueprint
apm install api-blueprint-preview