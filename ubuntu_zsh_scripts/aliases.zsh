alias test='echo test... testing, 1, 2... test... test, balls... testing, 1... All clear!'
alias c='clear'
alias l.='ls -d .* --color=auto'
alias ..='cd ..'
alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias calias='code ~/.oh-my-zsh/custom/aliases.zsh'
alias cec='code ~/.gitconfig'
alias czsh='code ~/.zshrc'
alias cp10k='code ~/.p10k.zsh'
alias cpsql='cd ~ ; ... ; sudo vi /etc/postgresql/12/main/postgresql.conf'
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

# Express API
nmig() { cd db/migrations ; touch "$1".do.create."$2".sql "$1".undo.create."$2".sql ; ... ;}
nmigjs() { cd db/migrations ; touch "$1".do.create."$2".js "$1".undo.create."$2".js ; ... ;}
nseed() { cd db/seeds ; touch seed."$@".sql trunc."$@".sql ; ... ;}
# ==> create Express boilerplate <==
cnebrepo='https://github.com/musicMan1337/Express_Boilerplate.git'
cneb() { git clone $cnebrepo "$@" && cd "$@" ; rm -rfv .git && git init && mv dummy.env .env && npm install ;}
# ==> create Express/PostgreSQL boilerplate <==
cnepsqlbrepo='https://github.com/musicMan1337/Express_PSQL_Boilerplate.git'
cnepb() { git clone $cnepsqlbrepo "$@" && cd "$@" ; rm -rfv .git && git init && mv dummy.env .env && npm install ;}

# REACT Stuff
alias cra='npx create-react-app'
alias irouter='npm install react-router-dom'
alias irpt='npm install prop-types'
alias irtr='npm install react-test-renderer -D'
alias irht='npm install @testing-library/react-hooks -D'
alias ienzyme='npm install enzyme -D'
alias reacttpacks='npm install -D react-test-renderer @testing-library/react-hooks enzyme'
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
# ==> create React:Standard boilerplate <==
cnrsbrepo=''
cnrsb() { git clone $cnepsqlbrepo "$@" && cd "$@" ; rm -rfv .git && npm install & mv dummy.env .env ;}
alias srclean='setopt localoptions rmstarsilent && rm -rfv public/* src/* ; mkdir src/styles ; mammothHead public/ && srFileGenerator && echo Have a nice day, Master!'
alias srindexhtml='zsh /mnt/c/Users/admin/hereDocs/reactClean/standard/indexhtml.txt'
alias srmanifestjson='zsh /mnt/c/Users/admin/hereDocs/reactClean/standard/manifestjson.txt'
alias srindexjs='zsh /mnt/c/Users/admin/hereDocs/reactClean/standard/indexjs.txt'
alias srappjs='zsh /mnt/c/Users/admin/hereDocs/reactClean/standard/Appjs.txt'
alias srsetupTestsjs='zsh /mnt/c/Users/admin/hereDocs/reactClean/standard/setupTestsjs.txt'
alias srglobalscss='zsh /mnt/c/Users/admin/hereDocs/reactClean/standard/globalscss.txt'
alias srFileGenerator='srindexhtml && srmanifestjson && srindexjs && srappjs && srsetupTestsjs && srglobalscss'

# ==> VERBOSE react structure <==
# ex: vnc [compName] [CompName]
vnc() {
  mkdir src/components/"$1" ; cd src/components/"$1" ; touch "$1".scss "$1".js "$1".test.js index.js ; echo "export { default as $2 } from './$1'" >> index.js ; .. ; echo "export { $2 } from './$1'" >> index.js ; ...
}
# ex: vncc [parentCompDir] [compName] [CompName]
vncc() {
  if [[ ! -d src/components/"$1"/components ]]
    then mkdir src/components/"$1"/components/ ; touch mkdir src/components/"$1"/components/index.js
  fi && mkdir src/components/"$1"/components/"$2" ; cd src/components/"$1"/components ; echo "export { $3 } from './$2'" >> index.js ; cd "$2" ; touch "$2".scss "$2".js index.js ; echo "export { default as $3 } from './$2'" >> index.js ; .5
}
# ex: vncc [compName] [CompName]
vnch() {
  if [[ ! -d src/components/"$1"/hooks ]]
    then mkdir src/components/"$1"/hooks ; touch src/components/"$1"/hooks/index.js src/components/"$1"/hooks/use"$2".test.js
  fi && cd src/components/"$1" ; echo "export { $2 } from './hooks'" >> index.js ; cd hooks ; touch "$2".js ; echo "export { default as $2 } from './$2'" >> index.js ; .4
}
vnh() { touch src/helpers/"$@".js ;}
vnr() { touch src/routes/"$@".js ;}
# ==> create React:Verbose boilerplate <==
cnrvbrepo='https://github.com/musicMan1337/React_Boilerplate.git'
cnrvb() { git clone $cnepsqlbrepo "$@" && cd "$@" ; rm -rfv .git && git init && npm install ;}
alias vrclean='setopt localoptions rmstarsilent && rm -rfv public/* src/* ; cd src ; mkdir components images helpers routes styles styles/mixins styles/variables ; touch components/index.js ; .. ; vnc app App ; rm src/components/index.js ; touch src/components/index.js ; mammothHead public/ && vrFileGenerator && vrcMessage'
alias vrcMessage='/mnt/c/Users/admin/hereDocs/asciiArt/vrcMessage.txt'
alias vrindexhtml='zsh /mnt/c/Users/admin/hereDocs/reactClean/verbose/indexhtml.txt'
alias vrmanifestjson='zsh /mnt/c/Users/admin/hereDocs/reactClean/verbose/manifestjson.txt'
alias vrindexjs='zsh /mnt/c/Users/admin/hereDocs/reactClean/verbose/indexjs.txt'
alias vrappjs='zsh /mnt/c/Users/admin/hereDocs/reactClean/verbose/appjs.txt'
alias vrsetupTestsjs='zsh /mnt/c/Users/admin/hereDocs/reactClean/verbose/setupTestsjs.txt'
alias vrcss_resetscss='zsh /mnt/c/Users/admin/hereDocs/reactClean/verbose/css_resetscss.txt'
alias vrmixins='zsh /mnt/c/Users/admin/hereDocs/reactClean/verbose/mixins.txt'
alias vrvariables='zsh /mnt/c/Users/admin/hereDocs/reactClean/verbose/variables.txt'
alias vrFileGenerator='vrindexhtml ; vrmanifestjson ; vrindexjs ; vrappjs ; vrsetupTestsjs ; vrcss_resetscss ; vrmixins ; vrvariables'

# Logos/Icons/Other Stuff
npdd() {
  if [[ ! -d project_dump ]]
    then mkdir project_dump
  fi && mkdir project_dump/"$@" project_dump/"$@"/src project_dump/"$@"/server project_dump/"$@"/server/test
}
alias gitatt='zsh /mnt/c/Users/admin/hereDocs/git/gitattributes.txt'
alias mammothHead='cp /mnt/c/Users/admin/favicon.ico'
alias loadMessage='/mnt/c/Users/admin/hereDocs/asciiArt/loadMessage.txt'
loadMessage

#<-- - = == ===\__WSL-ONLY STUFF BEYOND HERE!__|=== == = - -->#
# Kill Commands
alias pss='ps aux | grep'
alias killa='sudo killall -r ".*"'
alias killu='powershell.exe wsl -t Ubuntu'
alias killvsc='pkill -f vscode'
alias wslreboot='history -a && cmd.exe /C wsl --shutdown'

# PostgreSQL
alias psqlstart='sudo service postgresql start'
alias psqlconnect='sudo -u postgres psql'
psqls() { psqlstart && psqlconnect ;}
alias psqlstatus='sudo service postgresql status'
alias psqlstop='sudo service postgresql stop'
alias psqlcu='sudo -u postgres createuser'
alias psqlcdb='sudo -u postgres createdb'
pseed() { psql -U "$1" -d "$2" -f "$3" ;}

# MongoDB
alias mdbstatus='sudo service mongodb status'
alias mdbstart='sudo service mongodb start'
alias mdbstop='sudo service mongodb stop'

# Folder navigation
alias cdcode='cd /mnt/e/Code'
alias cdmern='cd /mnt/e/Code/sandbox/MERN_Stack_sandbox'
alias cdnode='cd /mnt/e/Code/sandbox/Node_Server_sandbox'
alias cdreact='cd /mnt/e/Code/sandbox/React_sandbox'
alias cdvanilla='cd /mnt/e/Code/sandbox/Vanilla_sandbox'
alias cdgo='cd ~/go/src/github.com/musicMan1337/'

# Snippets_n_Scripts repo update
# ==> shell aliases <==
alias zAliases='cp ~/.oh-my-zsh/custom/aliases.zsh .'
alias zGitconfig='cp ~/.gitconfig .'
alias bAliases='cp /mnt/c/Users/admin/.bashrc .'
alias bGitconfig='cp /mnt/c/Users/admin/.gitconfig .'
# ==> shell .rc files <==
alias zBashrc='cp ~/.bashrc .'
alias zZshrc='cp ~/.zshrc .'
alias zP10k='cp ~/.p10k.zsh .'
# ==> VScode snippets <==
alias globalJson='cp /mnt/c/Users/admin/AppData/Roaming/Code/User/snippets/html-local.code-snippets .'
alias htmlJson='cp /mnt/c/Users/admin/AppData/Roaming/Code/User/snippets/html.json .'
alias jsJson='cp /mnt/c/Users/admin/AppData/Roaming/Code/User/snippets/javascript.json .'
alias scssJson='cp /mnt/c/Users/admin/AppData/Roaming/Code/User/snippets/scss.json .'
alias jsonJson='cp /mnt/c/Users/admin/AppData/Roaming/Code/User/snippets/json.json .'
alias mdJson='cp /mnt/c/Users/admin/AppData/Roaming/Code/User/snippets/markdown.json .'
# ==> hereDocs <==
alias hDocs='cp -r /mnt/c/Users/admin/hereDocs .'
# ==> windows terminal settings <==
alias wtsettings='cp /mnt/c/Users/admin/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json .'
# ==> repo <==
alias snippets='/mnt/e/Code/Snippets_Aliases_andMore/VScode_Snippets'
alias zScripts='/mnt/e/Code/Snippets_Aliases_andMore/ubuntu_zsh_scripts'
alias bScripts='/mnt/e/Code/Snippets_Aliases_andMore/win10_bash_scripts'
# ==> target repo <==
alias vSnippets='cd /mnt/e/Code/Snippets_Aliases_andMore/VScode_Snippets'
alias zScripts='cd /mnt/e/Code/Snippets_Aliases_andMore/ubuntu_zsh_scripts'
alias bScripts='cd /mnt/e/Code/Snippets_Aliases_andMore/win10_bash_scripts'
alias shellsrc='cd /mnt/e/Code/Snippets_Aliases_andMore/shellrc_Files'
# ==> mega updater <==
snsupdate () {
  zScripts && zAliases ; zGitconfig ;
  bScripts && bAliases ; bGitconfig ;
  shellsrc && zBashrc ; zZshrc ; zP10k
  vSnippets && globalJson ; htmlJson; jsJson ; scssJson ; jsonJson ; mdJson ;
  .. ; wtsettings && hDocs && git cm "$@" && git push
}

# p10k Stuff
pmarker() { touch "$@"/.shorten_folder_marker ;}