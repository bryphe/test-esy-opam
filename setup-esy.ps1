npm install -g rimraf
npm install -g yarn
git clone https://github.com/esy/esy C:/projects/esy

cd C:/projects/esy
git submodule update --init --recursive

npm install esy-bash
npm install esy-ocaml/FastReplaceString.git#9450b6
node scripts/bootstrap/copy-fastreplacestring.js

appveyor-retry yarn run bootstrap:esy-install

npm run bootstrap:install-opam
npm run bootstrap:install-dependencies
