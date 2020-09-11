alias test='echo Youre an idiot!'
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

# MERN Stack
alias mernback='npm i express cors mongoose dotenv'

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

# Local navigation
alias cdcode='cd /mnt/e/Code'
alias cdgo='cd ~/go/src/github.com/musicMan1337/'

# API servers
alias apigot='/mnt/c/Users/admin/go/src/github.com/musicMan1337/my_test_api/my_test_api.exe'

# Global hereDocs
# ==> for react cleanup <==
alias indexhtml='zsh /mnt/c/Users/admin/hereDocs/reactClean/indexhtml.txt'
alias manifestjson='zsh /mnt/c/Users/admin/hereDocs/reactClean/manifestjson.txt'
alias indexjs='zsh /mnt/c/Users/admin/hereDocs/reactClean/indexjs.txt'
alias Appjs='zsh /mnt/c/Users/admin/hereDocs/reactClean/Appjs.txt'
alias setupTestsjs='zsh /mnt/c/Users/admin/hereDocs/reactClean/setupTestsjs.txt'
alias globalscss='zsh /mnt/c/Users/admin/hereDocs/reactClean/globalscss.txt'
alias srFileGenerator='indexhtml && manifestjson && indexjs && Appjs && setupTestsjs && globalscss'

# Logos/Icons/Other Stuff
alias mammothHead='cp /mnt/c/Users/admin/logo-head.ico'
alias loadMessage='/mnt/c/Users/admin/hereDocs/asciiArt/loadMessage.txt'

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

loadMessage