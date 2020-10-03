alias test='echo test... testing, 1, 2... test... test, balls... testing, 1... All clear!'
alias c='clear'
alias l.='ls -d .* --color=auto'
alias ..='cd ..'
alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias calias='code ~/.bashrc'
alias cec='code ~/.gitconfig'
alias cpsql='code /c/Program\ Files/postgresql/12/data/postgresql.conf'
alias exp='explorer.exe .'

# NPM Stuff
alias ieslint='npm install eslint -D'
alias insass='npm install node-sass'
alias isass='npm install sass sass-resources-loader'
alias inyc='npm install nyc -D'
alias start='npm start'
alias dev='npm run dev'
alias lint='npm run lint'
alias t='npm test'
alias tw='npm t -- -watch'
alias coverage='npm run coverage'
alias rollback='npm run rollback'
alias migrate='npm run migrate'
alias migrate:test='npm run migrate:test'
alias seed='npm run seed'

# Node.js
alias iexpress='npm install express'
alias inodemon='npm install nodemon -D'
alias imorgan='npm install morgan'
alias idotenv='npm install dotenv'
alias icors='npm install cors'
alias ihelmet='npm install helmet'
alias iexpresspacks='npm install express morgan dotenv cors helmet && npm install nodemon -D'
alias imongoose='npm install mongoose'
alias imocha='npm install mocha -D'
alias ichai='npm install chai -D'
alias isupertest='npm install supertest -D'
alias inodetpacks='npm install -D mocha chai supertest nyc'
# ==> create server directory <==
alias cenv='touch .env ; echo "API_TOKEN=put-your-token-here" >> .env ; echo ".env" >> .gitignore'
alias cnsh='npm init -y && imernpack && mkdir api config jobs loaders models services subscribers types test'
alias cns='mkdir server ; cd server/ ; cnsh'
cnns() { mkdir "$@" ; cd "$@"/ ; cnsh ;}
# ==> create Express boilerplate <==
cnebrepo='https://github.com/musicMan1337/Express_Boilerplate.git'
cneb() { git clone $cnebrepo "$@" && cd "$@" ; rm -rfv .git && npm install & mv dummy.env .env ;}

# REACT Stuff
alias cra='npx create-react-app'
alias irouter='npm install react-router-dom'
alias irpt='npm install prop-types'
alias irtr='npm install react-test-renderer -D'
alias ienzyme='npm install enzyme -D'
alias reacttpacks='npm install -D react-test-renderer enzyme'
alias imuic='npm install @material-ui/core'
alias imuii='npm install @material-ui/icons'
alias imuis='npm install @material-ui/styles'
alias imuipacks='npm install @material-ui/core @material-ui/icons @material-ui/styles'
alias icountup='npm install react-countup'
alias iclassnames='npm install classnames'
alias ichartjs='npm install react-chartjs-2 chart.js'

# Format new React app using hereDocs
# ==> STANDARD react structure <==
snc() { touch src/"$@".js ;}
sncd() { mkdir src/"$@" ; touch src/"$@"/"$@".js src/"$@"/"$@".test.js ;}
sncb() { touch src/"$1"/"$2".js src/"$1"/"$2".test.js ;}
snhc() {
  if [[ ! -d src/hooks ]];
    then mkdir src/hooks src/hooks/Tests
  fi && touch src/hooks/"$@".js src/hooks/Tests/"$@".test.js
}
sncc() {
  if [[ ! -d src/components ]];
    then mkdir src/components src/components/Tests
  fi && touch src/components/"$@".js src/components/Tests/"$@".test.js
}
snccd() { mkdir src/components/"$1" && touch src/components/"$1"/"$2".js src/components/"$1"/"$2".test.js ;}
alias srclean='setopt localoptions rmstarsilent && rm -rfv public/* src/* ; mkdir src/styles ; mammothHead public/ && srFileGenerator && echo Have a nice day, Master!'
alias srindexhtml='bash ~/hereDocs/reactClean/standard/indexhtml.txt'
alias srmanifestjson='bash ~/hereDocs/reactClean/standard/manifestjson.txt'
alias srindexjs='bash ~/hereDocs/reactClean/standard/indexjs.txt'
alias srappjs='bash ~/hereDocs/reactClean/standard/Appjs.txt'
alias srsetupTestsjs='bash ~/hereDocs/reactClean/standard/setupTestsjs.txt'
alias srglobalscss='bash ~/hereDocs/reactClean/standard/globalscss.txt'
alias srFileGenerator='srindexhtml && srmanifestjson && srindexjs && srappjs && srsetupTestsjs && srglobalscss'

# ==> VERBOSE react structure <==
# ex: vnc [compName] [CompName]
vnc() {
  mkdir src/components/"$1" ; cd src/components/"$1" ; touch "$1".scss "$1".js "$1".test.js index.js ; echo "export { default
s $2 } from './$1'" >> index.js ; .. ; echo "export { $2 } from './$1'" >> index.js ; ...
}
# ex: vncc [parentCompDir] [compName] [CompName]
vncc() {
  if [[ ! -d src/components/"$1"/components ]]
  then mkdir src/components/"$1"/components/ ; touch mkdir src/components/"$1"/components/index.js
  fi && mkdir src/components/"$1"/components/"$2" ; cd src/components/"$1"/components ; echo "export { $3 } from './$2'" >> index.js ; cd "$2" ; touch "$2".scss "$2".js index.js ; echo "export { default as $3 } from './$2'" >> index.js ; .5
}
vnch() {
  if [[ ! -d src/components/"$1"/hooks ]]
  then mkdir src/components/"$1"/hooks ; touch src/components/"$1"/hooks/index.js src/components/"$1"/hooks/hooks.test.js
  fi && cd src/components/"$1" ; echo "export { $2 } from './hooks'" >> index.js ; cd hooks ; touch "$2".js ; echo "export { default as $2 } from './$2'" >> index.js ; .4
}
vnh() { touch src/helpers/"$@".js ;}
vnr() { touch src/routes/"$@".js ;}
alias vrclean='setopt localoptions rmstarsilent && rm -rfv public/* src/* ; cd src ; mkdir components images helpers routes styles styles/mixins styles/variables ; touch components/index.js ; .. ; vnc app App ; mammothHead public/ && vrFileGenerator && vrcMessage'
alias vrcMessage='~/hereDocs/asciiArt/vrcMessage.txt'
alias vrindexhtml='bash ~/hereDocs/reactClean/verbose/indexhtml.txt'
alias vrmanifestjson='bash ~/hereDocs/reactClean/verbose/manifestjson.txt'
alias vrindexjs='bash ~/hereDocs/reactClean/verbose/indexjs.txt'
alias vrappjs='bash ~/hereDocs/reactClean/verbose/appjs.txt'
alias vrsetupTestsjs='bash ~/hereDocs/reactClean/verbose/setupTestsjs.txt'
alias vrcss_resetscss='bash ~/hereDocs/reactClean/verbose/css_resetscss.txt'
alias vrmixins='bash ~/hereDocs/reactClean/verbose/mixins.txt'
alias vrvariables='bash ~/hereDocs/reactClean/verbose/variables.txt'
alias vrFileGenerator='vrindexhtml ; vrmanifestjson ; vrindexjs ; vrappjs ; vrsetupTestsjs ; vrcss_resetscss ; vrmixins ; vrvariables'

# Logos/Icons/Other Stuff
npdd() {
  if [[ ! -d project_dump ]]
    then mkdir project_dump
  fi && mkdir project_dump/"$@" project_dump/"$@"/src project_dump/"$@"/server project_dump/"$@"/server/test
}
alias gitatt='bash ~/hereDocs/git/gitattributes.txt'
alias mammothHead='cp ~/logo-head.ico'
alias loadMessage='bash ~/hereDocs/asciiArt/loadMessage.txt'

loadMessage

#<-- - = == ===\__BASH STUFF BEYOND HERE!__|=== == = - -->#
# PostgreSQL
alias psqlp='psql -U postgres'
alias psqlt='psql -d postgres -U test_user'
alias psqlu='psql -d postgres -U'
alias cdb='createdb -U'

# Folder navigation
alias cdcode='cd /e/Code'
alias cdmern='cd /e/Code/sandbox/MERN_Stack_sandbox'
alias cdnode='cd /e/Code/sandbox/Node_Server_sandbox'
alias cdreact='cd /e/Code/sandbox/React_sandbox'
alias cdvanilla='cd /e/Code/sandbox/Vanilla_sandbox'
alias cdgo='cd ~/go/src/github.com/musicMan1337/'

parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' ;}
export PS1="\[\033[38;5;9m\]\u\[$(tput sgr0)\]\[\033[38;5;10m\][\[$(tput sgr0)\]\[\033[38;5;33m\]$MSYSTEM\[\033[38;5;10m\]]\[\033[38;5;10m\]:\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;3m\]\W\[\033[38;5;9m\]\$(parse_git_branch)\[$(tput sgr0)\] $ "
