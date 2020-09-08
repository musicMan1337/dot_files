alias test='echo test... testing, 1, 2... test... test, balls... testing, 1... All clear!'
alias c='clear'
alias l.='ls -d .* --color=auto'
alias ..='cd ..'
alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias calias='code ~/.bashrc'
alias exp='explorer.exe .'

# NPM Stuff
alias ieslint='touch .eslintrc.yaml .eslintignore && npm i eslint --only=dev && npx install-peerdeps --only=dev eslint-config-airbnb'
alias lint='npm run lint'
alias isass='npm install node-sass -S'
alias start='npm start'

# Deployment
alias ighp='npm install gh-pages --only=dev'
alias iserve='npm install serve -D'
alias serve='npm run serve'
alias deploy='npm run deploy'

# REACT Stuff
alias cra='npx create-react-app'
alias irpt='npm install --save prop-types'
alias irtr='npm add --only=dev react-test-renderer'
alias ienzyme='npm add --only=dev enzyme'
alias irouter='npm install react-router-dom'
alias reactpacks='irpt ; irtr ; ienzyme ; irouter'
# Format new React app
alias rclean='touch packages.md && cd public/ && rm -v * && touch index.html manifest.json && .. && cd src/ && rm -v * && touch index.js App.js setupTests.js && mkdir styles components && cd components/ && mkdir Tests && .. && cd styles/ && touch global.scss && ...'
# ...using hereDocs
alias srclean='setopt localoptions rmstarsilent && rm -r public/* src/* ; mkdir src/styles ; touch packages.md ; mammothHead public/  && srFileGenerator && echo Have a nice day, Master!'
# Create new components
nc() {
  touch src/"$@".js
}
ncd() {
  mkdir src/"$@" && mkdir src/"$@"/Tests && touch src/"$@"/"$@".js src/"$@"/Tests/"$@".test.js
}
ncb() {
  touch src/"$1"/"$2".js src/"$1"/Tests/"$2".test.js
}
nch()
{
  if [[ -a src/customHooks ]];
    then touch src/customHooks/"$@".js src/customHooks/Tests/"$@".test.js
    else mkdir src/customHooks src/customHooks/Tests && touch src/customHooks/"$@".js src/customHooks/Tests/"$@".test.js
  fi
}
ncc()
{
  if [[ -a src/components ]];
    then touch src/components/"$@".js src/components/Tests/"$@".test.js
    else mkdir src/components src/components/Tests && touch src/components/"$@".js src/components/Tests/"$@".test.js
  fi
}
nccd() {
  mkdir src/components/"$1" && touch src/components/"$1"/"$2".js src/components/"$1"/"$2".test.js
}
ncc2() {
  touch src/components/"$1"/"$2".js src/components/"$1"/"$2".test.js
}

# Global hereDocs
# ==> for react cleanup <==
alias indexhtml='bash ~/hereDocs/reactClean/indexhtml.txt'
alias manifestjson='bash ~/hereDocs/reactClean/manifestjson.txt'
alias indexjs='bash ~/hereDocs/reactClean/indexjs.txt'
alias Appjs='bash ~/hereDocs/reactClean/Appjs.txt'
alias setupTestsjs='bash ~/hereDocs/reactClean/setupTestsjs.txt'
alias globalscss='bash ~/hereDocs/reactClean/globalscss.txt'
alias srFileGenerator='indexhtml && manifestjson && indexjs && Appjs && setupTestsjs && globalscss'

# Logos/Icons/Other Stuff
alias mammothHead='cp ~/logo-head.ico'
alias loadMessage='bash ~/hereDocs/asciiArt/loadMessage.txt'

loadMessage
