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
alias ieslint='touch .eslintrc.yaml .eslintignore && npm i eslint --only=dev && npx install-peerdeps --only=dev eslint-config-airbnb'
alias insass='npm install node-sass'
alias isass='npm install sass sass-resources-loader'
alias imorgan='npm install morgan'
alias ihelmet='npm install helmet'
alias lint='npm run lint'
alias start='npm start'
alias dev='npm run dev'
alias cenv='touch .env ; echo "API_TOKEN=put-your-token-here" >> .env ; echo ".env" >> .gitignore'

# Deployment
alias ighp='npm install gh-pages --only=dev'
alias iserve='npm install serve --only=dev'
alias serve='npm run serve'
alias deploy='npm run deploy'

# Node / MERN Stack
alias imernpack='npm i express cors mongoose dotenv morgan'
alias cnsh='npm init -y && imernpack && mkdir api config jobs loaders models services subscribers types'
alias cns='mkdir server ; cd server/ ; npm init -y && imernpack && mkdir api config jobs loaders models services subscribers types'

# REACT Stuff
alias cra='npx create-react-app'
alias irpt='npm install --save prop-types'
alias irtr='npm add --only=dev react-test-renderer'
alias ienzyme='npm add --only=dev enzyme'
alias irouter='npm install react-router-dom'
alias reactpacks='irpt ; irtr ; ienzyme ; irouter'
alias imuic='npm install @material-ui/core'
alias imuii='npm install @material-ui/icons'
alias imuis='npm install @material-ui/styles'
alias imui='imuic ; imuii; imuis'
alias icountup='npm i react-countup'
alias iclassnames='npm i classnames'
alias ichartjs='npm install react-chartjs-2 chart.js'

# Format new React app using hereDocs
# ==> standard react structure <==
snc() { touch src/"$@".js }
sncd() { mkdir src/"$@" ; touch src/"$@"/"$@".js src/"$@"/"$@".test.js }
sncb() { touch src/"$1"/"$2".js src/"$1"/"$2".test.js }
snhc()
{
  if [[ ! -d src/hooks ]];
    then mkdir src/hooks src/hooks/Tests
  fi && touch src/hooks/"$@".js src/hooks/Tests/"$@".test.js
}
sncc()
{
  if [[ ! -d src/components ]];
    then mkdir src/components src/components/Tests
  fi && touch src/components/"$@".js src/components/Tests/"$@".test.js
}
snccd() { mkdir src/components/"$1" && touch src/components/"$1"/"$2".js src/components/"$1"/"$2".test.js }
alias srclean='setopt localoptions rmstarsilent && rm -r public/* src/* ; mkdir src/styles ; mammothHead public/ && srFileGenerator && echo Have a nice day, Master!'
alias srindexhtml='zsh /mnt/c/Users/admin/hereDocs/reactClean/standard/indexhtml.txt'
alias srmanifestjson='zsh /mnt/c/Users/admin/hereDocs/reactClean/standard/manifestjson.txt'
alias srindexjs='zsh /mnt/c/Users/admin/hereDocs/reactClean/standard/indexjs.txt'
alias srappjs='zsh /mnt/c/Users/admin/hereDocs/reactClean/standard/Appjs.txt'
alias srsetupTestsjs='zsh /mnt/c/Users/admin/hereDocs/reactClean/standard/setupTestsjs.txt'
alias srglobalscss='zsh /mnt/c/Users/admin/hereDocs/reactClean/standard/globalscss.txt'
alias srFileGenerator='srindexhtml && srmanifestjson && srindexjs && srappjs && srsetupTestsjs && srglobalscss'
# ==> verbose react structure <==
# ex: vnc [compName] [CompName]
vnc() { mkdir src/components/"$1" ; cd src/components/"$1" ; touch "$1".scss "$1".js "$1".test.js index.js ; echo "export { default as $2 } from './$1'" >> index.js ; .. ; echo "export { $2 } from './$1'" >> index.js ; ... }
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
vnh() { touch src/helpers/"$@".js }
vnr() { touch src/routes/"$@".js }
alias vrclean='setopt localoptions rmstarsilent && rm -r public/* src/* ; cd src ; mkdir components images helpers routes styles styles/mixins styles/variables ; touch components/index.js ; .. ; vnc app App ; mammothHead public/ && vrFileGenerator && vrcMessage'
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

# API servers
alias apigot='/mnt/c/Users/admin/go/src/github.com/musicMan1337/my_test_api/my_test_api.exe'

# Logos/Icons/Other Stuff
npdd() {
  if [[ ! -d project_dump ]];
    then mkdir project_dump
  fi && mkdir project_dump/"$@" && mkdir project_dump/"$@"/src
}
alias mammothHead='cp /mnt/c/Users/admin/logo-head.ico'
alias loadMessage='/mnt/c/Users/admin/hereDocs/asciiArt/loadMessage.txt'
loadMessage

#<-- - = == ===\__WSL-ONLY STUFF BEYOND HERE!__|=== == = - -->#
# More PostgreSQL stuff
alias psqlstart='sudo service postgresql start'
alias psqlconnect='sudo -u postgres psql'
psqls() { psqlstart && psqlconnect }
alias psqlstatus='sudo service postgresql status'
alias psqlstop='sudo service postgresql stop'
alias psqlcu='sudo -u postgres createuser'
alias psqlcdb='sudo -u postgres createdb'

# Local navigation
alias cdcode='cd /mnt/e/Code'
alias cdgo='cd ~/go/src/github.com/musicMan1337/'

# Snippets_n_Scripts repo update
# ==> shell stuff <==
alias zAliases='cp ~/.oh-my-zsh/custom/aliases.zsh .'
alias zGitconfig='cp ~/.gitconfig .'
alias bAliases='cp /mnt/c/Users/admin/.bashrc .'
alias bGitconfig='cp /mnt/c/Users/admin/.gitconfig .'
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
# ==> mega updater <==
snsupdate ()
{
  zScripts && zAliases ; zGitconfig ;
  bScripts && bAliases ; bGitconfig ;
  vSnippets && globalJson ; htmlJson; jsJson ; scssJson ; jsonJson ; mdJson ;
  .. ; wtsettings && hDocs && git cm "$@" && git push
}