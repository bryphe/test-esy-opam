npm install -g rimraf
npm install -g yarn
git clone https://github.com/esy/esy C:/projects/esy

cd C:/projects/esy
git checkout 62665412ed1b182ed15e2e06a1216d374b4fdfcc
git submodule update --init --recursive

npm install esy-bash
npm install esy-ocaml/FastReplaceString.git#9450b6
node scripts/bootstrap/copy-fastreplacestring.js

appveyor-retry yarn run bootstrap:esy-install

npm run bootstrap:install-opam
npm run bootstrap:install-dependencies
