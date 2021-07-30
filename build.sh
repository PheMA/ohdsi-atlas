mkdir atlas-deploy
npm install
npm audit fix
npm run build

cp index.html atlas-deploy/
cp LICENSE atlas-deploy/
cp README.md atlas-deploy/
cp -r images/ atlas-deploy/
cp -r js/ atlas-deploy/
cp -r node_modules/ atlas-deploy/

zip -r atlas-v2.6.0-modified.zip atlas-deploy/
rm -r atlas-deploy/