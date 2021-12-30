alias test='echo test... testing, 1, 2... test... test, balls... testing, 1... All clear!'
alias ..='cd ..'
alias ...='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'
alias exp='explorer.exe .'
alias c.='code .'
alias c='clear'
alias l.='ls -d .* --color=auto'

#~ navigation
alias cdcode='cd ~/CODE'
alias cdboiler='cd ~/CODE/boilerplates'
alias cdrw='cd ~/CODE/react-webpack'
alias cdviper='cd /c/Viper'
alias cdsql='cd /c/TAG_SQL'
alias cdint='code /c/TAG_InterviewQuestions'
alias cdprojects='cd /c/tag-projects'
#? ...open with IDE
alias ccode='code ~/CODE'
alias cboiler='code ~/CODE/boilerplates'
alias cviper='code /c/Viper'
alias csql='code /c/TAG_SQL'
alias cint='code /c/TAG_InterviewQuestions'
alias cprojects='code /c/tag-projects'
alias crw='code ~/CODE/react-webpack'

#~ open config files
alias cbash='code ~/.bashrc'
alias cec='code ~/.gitconfig'
alias calias='code ~/.bashrc'

#~ tput (fancy stdout)
#? Font Style
BOLD=$(tput bold)
UNDERL_BEG=$(tput smul)
UNDERL_END=$(tput rmul)
RESET_ATTRS=$(tput sgr0)
#? Font Colors
RED=$(tput setaf 1 Red)
GREEN=$(tput setaf 2 Green)
YELLOW=$(tput setaf 3 Yellow)
BLUE=$(tput setaf 4 Blue)
PURPLE=$(tput setaf 5 Purple)
CYAN=$(tput setaf 6 Cyan)
GRAY=$(tput setaf 7 Gray)
#? Background Colors
RED_B=$(tput setab 1 Red)
GREEN_B=$(tput setab 2 Green)
YELLOW_B=$(tput setab 3 Yellow)
BLUE_B=$(tput setab 4 Blue)
PURPLE_B=$(tput setab 5 Purple)
CYAN_B=$(tput setab 6 Cyan)
GRAY_B=$(tput setab 7 Gray)

#~ ESLint and Prettier
alias globalESLint='npm install -global prettier @prettier/plugin-php eslint eslint-plugin-import eslint-plugin-jest eslint-plugin-jsx-a11y eslint-plugin-prettier eslint-plugin-react eslint-plugin-react-hooks eslint-plugin-testing-library @typescript-eslint/eslint-plugin @typescript-eslint/parser'

#~ NPM Stuff
alias start='npm start'
alias devs='npm run devserver'
alias storybook='npm run build-storybook && npm run storybook'
alias storybookrest='rm -rf public/storybook && git co master public/storybook'

#~ ==> STANDARD react structure <==
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

#~ ==> VERBOSE react structure <==
#* ex: vnc [CompName] [compName]
vnc() {
  mkdir src/components/"$1" ; cd src/components/"$1" ; touch "$2".scss "$1".js "$2".test.js ; .. ; echo "export { default as $1 } from './$1/$1'" >> index.js ; ...
}
#* ex: vncc [parentCompDir] [compName] [CompName]
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

#~ Clone Boilerplate Repos
ebrepo='https://github.com/musicMan1337/Express_PSQL_Boilerplate.git'
cneb() { degit $ebrepo "$@" && cd "$@" ; mv dummy.env .env ; code . && npm install ;}

rbrepo='git@github.com:musicMan1337/React_Boilerplate.git'
cnrb() { degit $rbrepo "$@" && cd "$@" ; mv dummy.env .env ; code . && npm install ;}

rtsbrepo='git@github.com:musicMan1337/React_TS_Boilerplate.git'
cnrtsb() { degit $rtsbrepo "$@" && cd "$@" ; mv dummy.env .env ; code . && npm install ;}

#~ Logos/Icons/Other Stuff
npdd() {
  if [[ ! -d project_dump ]]
    then mkdir project_dump
  fi && mkdir project_dump/"$@" project_dump/"$@"/src project_dump/"$@"/server project_dump/"$@"/server/test
}
alias gitatt='bash ~/hereDocs/git/gitattributes.txt'
alias mammothHead='cp ~/logo-head.ico'
alias loadMessage='bash ~/hereDocs/asciiArt/loadMessage.txt'
loadMessage

#~ PostgreSQL
alias psqlp='psql -U postgres'
alias psqlt='psql -d postgres -U test_user'
alias psqlu='psql -d postgres -U'
alias cdb='createdb -U'

#~ Bash PS1
parse_git_branch() { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' ;}
PS1="\[\033[38;5;9m\]\u\[$(tput sgr0)\]\[\033[38;5;10m\][\[$(tput sgr0)\]\[\033[38;5;33m\]$MSYSTEM\[\033[38;5;10m\]]\[\033[38;5;10m\]:\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;3m\]\W\[\033[38;5;9m\]\$(parse_git_branch)\[$(tput sgr0)\] $ "

#? in VSCode's settings.json -> "terminal.integrated.env.windows": { "VSC_CWD": "${workspaceFolder}" },
if [ -z "$VSC_CWD" ]
  then source ~/pureline/pureline ~/.pureline.conf
  else export PS1
fi

# function _update_ps1() {
#   PS1="$(~/gitbash-powerline/bin/x64/gitbash-powerline.exe $? 2> /dev/null)"
# }

# if [ "$TERM" != "linux" ]; then
#   PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
# fi

#~ Snippets_n_Scripts repo update (WSL VERSION)
#? ==> shell aliases <==
alias wsl_zAliases='cp ~/.oh-my-zsh/custom/aliases.zsh .'
alias wsl_zGitconfig='cp ~/.gitconfig .'
alias wsl_bAliases='cp /mnt/c/Users/admin/.bashrc .'
alias wsl_bGitconfig='cp /mnt/c/Users/admin/.gitconfig .'
#? ==> shell .rc files <==
alias wsl_zBashrc='cp ~/.bashrc .'
alias wsl_zZshrc='cp ~/.zshrc .'
alias wsl_zP10k='cp ~/.p10k.zsh .'
#? ==> hereDocs <==
alias wsl_hDocs='cp -r /mnt/c/Users/admin/hereDocs .'
#? ==> windows terminal settings <==
alias wsl_wtsettings='cp /mnt/c/Users/admin/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json .'
#? ==> target repo <==
alias wsl_cdzScripts='cd /mnt/c/Users/admin/CODE/dot_files/ubuntu_zsh_scripts'
alias wsl_cdbScripts='cd /mnt/c/Users/admin/CODE/dot_files/win10_bash_scripts'
alias wsl_cdShellsrc='cd /mnt/c/Users/admin/CODE/dot_files/shellrc_Files'
#! ==> mega updater <==
snsupdate_wsl () {
  wsl_cdzScripts && wsl_zAliases ; wsl_zGitconfig ;
  wsl_cdbScripts && wsl_bAliases ; wsl_bGitconfig ;
  wsl_cdShellsrc && wsl_zBashrc ; wsl_zZshrc ; wsl_zP10k ;
  .. ; wsl_wtsettings && wsl_hDocs && git add . && git commit -m \'save\' && git push
}

#~ Snippets_n_Scripts repo update (WINDOWS VERSION)
#? ==> shell aliases <==
alias win_bAliases='cp ~/.bashrc .'
alias win_bGitconfig='cp ~/.gitconfig .'
#? ==> hereDocs <==
alias win_hDocs='cp -r ~/hereDocs .'
#? ==> windows terminal settings <==
alias win_wtsettings='cp ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json .'
#? ==> target repo <==
alias win_cdzScripts='cd ~/CODE/dot_files/ubuntu_zsh_scripts'
alias win_cdbScripts='cd ~/CODE/dot_files/win10_bash_scripts'
alias win_cdShellsrc='cd ~/CODE/dot_files/shellrc_Files'
#! ==> mega updater <==
snsupdate_win () {
  win_cdbScripts && win_bAliases ; win_bGitconfig ;
  .. ; win_wtsettings && win_hDocs && git add . && git commit -m \'save\' # && git push ;
}

#~ eBacon stuff
REACT_ROOT='public/assets/App/viper/js/react'
VALID_VIPER_PATH='public\assets\App\viper\js\react\'

alias VSC='echo $VSC_CDIR'
alias cdDIR='cd $VSC_CDIR'

#~ eBacon quickly add a new component in ./components
#* ex: enc [CompName]
enc() {
  if [[ "$VSC_CDIR" != *"$VALID_VIPER_PATH"* ]]
  then
    _dirError ;
  else
    cd $VSC_CDIR ;
    if [[ ! -d components ]]
      then  mkdir components ; touch components/index.js ;
    fi && mkdir components/"$1" ; cd components/"$1" ; touch "$1".js ; .. ; echo "export { default as $1 } from './$1/$1'" >> index.js ; .. ;
  fi
}

#* ebacon_init
ebacon_init() {
  if [[ "$VSC_CDIR" != *"$VALID_VIPER_PATH"* ]]
  then
    _dirError ;
  else
    local FOLDER=$(basename $VSC_CDIR);
    echo ; echo "( •_•)>⌐■-■" ; echo ;
    cd $VSC_CDIR ;
    echo '⏳ Generating '$RED"$2"$RESET_ATTRS' boilerplate ⏳';

    echo 'Init '$PURPLE'"./'${FOLDER^}'App.js"'$RESET_ATTRS' and directories... '$GREEN'✔'$RESET_ATTRS ;
    mkdir components hooks state utils api ; touch index.js ${FOLDER^}App.js ; _writeToRootIndexjs ; _writeToAppjs ;

    echo 'Init '$PURPLE'"./components/index.js"'$RESET_ATTRS'...... '$GREEN'✔'$RESET_ATTRS ;
    cd components ; touch index.js ; _writeToComponentsIndexjs ; .. ;

    echo 'Init '$PURPLE'"./state"'$RESET_ATTRS' files.............. '$GREEN'✔'$RESET_ATTRS ;
    cd state ; touch ${FOLDER^}Context.js initialState.js ; _writeToContextjs ; _writeToInitialStatejs ; .. ;

    echo 'Init '$PURPLE'"./utils"'$RESET_ATTRS' files.............. '$GREEN'✔'$RESET_ATTRS ;
    cd utils ; touch constants.js helpers.js ; _writeToConstantsjs ; .. ;

    echo 'Init '$PURPLE'"./api"'$RESET_ATTRS' files................ '$GREEN'✔'$RESET_ATTRS ;
    cd api ; touch get.js post.js put.js delete.js index.js ; _writeToApiIndexjs ;

    cd $VSC_CWD ;
    echo ; echo '⚡ (⌐■_■) ⚡' ; echo ;
  fi
}

#~ Helpers
_dirError() {
  echo $PURPLE'$VSC_CDIR '$RESET_ATTRS'variable is invalid!' ;
  echo $GREEN'Open the file location in a tab, then open a new terminal instance while on that file!' ;
  echo $RED'Current open file location '$RESET_ATTRS'-> '${VSC_CDIR} ;
}

_writeToComponentsIndexjs() {
  echo '//~ export { default as CompName } from "./CompName/CompName";' >> index.js ;
}

_writeToApiIndexjs() {
  echo 'import * as del from "./delete";'                >> index.js ;
  echo 'import * as get from "./get";'                   >> index.js ;
  echo 'import * as post from "./post";'                 >> index.js ;
  echo 'import * as put from "./put";'                   >> index.js ;
  echo ''                                                >> index.js ;
  echo 'export default { delete: del, get, post, put };' >> index.js ;
  echo ''                                                >> index.js ;
}

_writeToInitialStatejs() {
  echo '/* eslint-disable no-unused-vars */'             >> initialState.js ;
  echo 'export const initialState = {'                   >> initialState.js ;
  echo '  //~ state'                                     >> initialState.js ;
  echo '  loading: "",'                                  >> initialState.js ;
  echo ''                                                >> initialState.js ;
  echo '  //~ helpers'                                   >> initialState.js ;
  echo '  exampleHelper: (someArgName = "") => {},'      >> initialState.js ;
  echo ''                                                >> initialState.js ;
  echo '  //~ async'                                     >> initialState.js ;
  echo '  exampleAsync: async (someArgName = []) => {},' >> initialState.js ;
  echo '};'                                              >> initialState.js ;
  echo ''                                                >> initialState.js ;
}

_writeToConstantsjs() {
  echo 'export const LOADING = {'                                       >> constants.js ;
  echo '  EXAMPLE_LOADING: "EXAMPLE_LOADING",'                          >> constants.js ;
  echo '};'                                                             >> constants.js ;
  echo ''                                                               >> constants.js ;
  echo 'export const ERRORS = {'                                        >> constants.js ;
  echo '  EXAMPLE_LOADING: {'                                           >> constants.js ;
  echo '    title: "Something went wrong",'                             >> constants.js ;
  echo '    text: "There was an error, try refreshing the page.",'      >> constants.js ;
  echo '    log: "Error in '${FOLDER^}'Context.js -- exampleMethod()",' >> constants.js ;
  echo '  },'                                                           >> constants.js ;
  echo '};'                                                             >> constants.js ;
  echo ''                                                               >> constants.js ;
}

_writeToRootIndexjs() {
  echo 'import React from "react";'                                                     >> index.js ;
  echo ''                                                                               >> index.js ;
  echo 'import { viperRender } from "viper-react-helper";'                              >> index.js ;
  echo 'import EBaconTheme from "eBacon/theme";'                                        >> index.js ;
  echo ''                                                                               >> index.js ;
  echo 'import '${FOLDER^}'App from "./'${FOLDER^}'App";'                               >> index.js ;
  echo ''                                                                               >> index.js ;
  echo '//! Add extra providers here !//'                                               >> index.js ;
  echo 'const Mount'${FOLDER^}'App = () => {'                                           >> index.js ;
  echo '  return ('                                                                     >> index.js ;
  echo '    <>'                                                                         >> index.js ;
  echo '      <'${FOLDER^}'App />'                                                      >> index.js ;
  echo '    </>'                                                                        >> index.js ;
  echo '  );'                                                                           >> index.js ;
  echo '};'                                                                             >> index.js ;
  echo ''                                                                               >> index.js ;
  echo 'export default Mount'${FOLDER^}'App;'                                           >> index.js ;
  echo ''                                                                               >> index.js ;
  echo 'const Start'${FOLDER^}'App = () => {'                                           >> index.js ;
  echo '  viperRender('                                                                 >> index.js ;
  echo '    <EBaconTheme>'                                                              >> index.js ;
  echo '      <'${FOLDER^}'App />'                                                      >> index.js ;
  echo '    </EBaconTheme>,'                                                            >> index.js ;
  echo '    document.getElementById("viperTwoPanel__rightContent"),'                    >> index.js ;
  echo '  );'                                                                           >> index.js ;
  echo '};'                                                                             >> index.js ;
  echo ''                                                                               >> index.js ;
  echo 'Viper.ReactAppLoader["reactApp/distribution401K"] = {};'                        >> index.js ;
  echo 'Viper.ReactAppLoader["reactApp/distribution401K"].InitFunction = function () {' >> index.js ;
  echo '  Start'${FOLDER^}'App();'                                                      >> index.js ;
  echo '};'                                                                             >> index.js ;
  echo ''                                                                               >> index.js ;
  echo 'Start'${FOLDER^}'App();'                                                        >> index.js ;
  echo ''                                                                               >> index.js ;
}

_writeToAppjs() {
  echo 'import React from "react";'                                             >> ${FOLDER^}App.js ;
  echo 'import { css } from "@emotion/core";'                                   >> ${FOLDER^}App.js ;
  echo ''                                                                       >> ${FOLDER^}App.js ;
  echo 'import Box from "eBacon/components/Box";'                               >> ${FOLDER^}App.js ;
  echo 'import { ICONS } from "eBacon/theme/icons";'                            >> ${FOLDER^}App.js ;
  echo 'import Paper from "eBacon/components/Paper";'                           >> ${FOLDER^}App.js ;
  echo 'import { COLORS } from "eBacon/theme/colors";'                          >> ${FOLDER^}App.js ;
  echo 'import { TP } from "eBacon/theme/typography";'                          >> ${FOLDER^}App.js ;
  echo 'import { SS } from "eBacon/theme/screenSizes";'                         >> ${FOLDER^}App.js ;
  echo 'import { BR } from "eBacon/theme/borderRadius";'                        >> ${FOLDER^}App.js ;
  echo 'import BoxChild from "eBacon/components/BoxChild";'                     >> ${FOLDER^}App.js ;
  echo 'import Typography, { VARIANTS } from "eBacon/components/Typography";'   >> ${FOLDER^}App.js ;
  echo 'import Button, { BTN_VARIANTS, MASS } from "eBacon/components/Button";' >> ${FOLDER^}App.js ;
  echo ''                                                                       >> ${FOLDER^}App.js ;
  echo 'const '${FOLDER^}'App = () => {'                                        >> ${FOLDER^}App.js ;
  echo '  return <div></div>;'                                                  >> ${FOLDER^}App.js ;
  echo '};'                                                                     >> ${FOLDER^}App.js ;
  echo ''                                                                       >> ${FOLDER^}App.js ;
  echo 'export default '${FOLDER^}'App;'                                        >> ${FOLDER^}App.js ;
  echo ''                                                                       >> ${FOLDER^}App.js ;
}
_writeToContextjs() {
echo 'import React, { createContext, useContext, useState } from "react";'       >> ${FOLDER^}Context.js ;
echo ''                                                                          >> ${FOLDER^}Context.js ;
echo 'import { useErrorModals } from "eBacon/components/hooks";'                 >> ${FOLDER^}Context.js ;
echo ''                                                                          >> ${FOLDER^}Context.js ;
echo 'import api from "../api";'                                                 >> ${FOLDER^}Context.js ;
echo 'import initialState from "./initialState";'                                >> ${FOLDER^}Context.js ;
echo 'import { LOADING, ERRORS } from "../utils/constants";'                     >> ${FOLDER^}Context.js ;
echo ''                                                                          >> ${FOLDER^}Context.js ;
echo 'const Untitled = createContext(initialState);'                             >> ${FOLDER^}Context.js ;
echo ''                                                                          >> ${FOLDER^}Context.js ;
echo 'const UntitledProvider = ({ children }) => {'                              >> ${FOLDER^}Context.js ;
echo '  const [loading, setLoading] = useState("");'                             >> ${FOLDER^}Context.js ;
echo '  const [errors, setErrors] = useState({});'                               >> ${FOLDER^}Context.js ;
echo ''                                                                          >> ${FOLDER^}Context.js ;
echo '  useErrorModals(errors, () => setErrors({}));'                            >> ${FOLDER^}Context.js ;
echo ''                                                                          >> ${FOLDER^}Context.js ;
echo '  //~|===========|'                                                        >> ${FOLDER^}Context.js ;
echo '  //!|  Internal |'                                                        >> ${FOLDER^}Context.js ;
echo '  //~|===========|'                                                        >> ${FOLDER^}Context.js ;
echo '  const _unBatchedLoading = (value) => {'                                  >> ${FOLDER^}Context.js ;
echo '    setLoading(value || "");'                                              >> ${FOLDER^}Context.js ;
echo '  };'                                                                      >> ${FOLDER^}Context.js ;
echo ''                                                                          >> ${FOLDER^}Context.js ;
echo '  //~|===========|'                                                        >> ${FOLDER^}Context.js ;
echo '  //!|  Helpers  |'                                                        >> ${FOLDER^}Context.js ;
echo '  //~|===========|'                                                        >> ${FOLDER^}Context.js ;
echo ''                                                                          >> ${FOLDER^}Context.js ;
echo '  //~|===========|'                                                        >> ${FOLDER^}Context.js ;
echo '  //!|   Async   |'                                                        >> ${FOLDER^}Context.js ;
echo '  //~|===========|'                                                        >> ${FOLDER^}Context.js ;
echo ''                                                                          >> ${FOLDER^}Context.js ;
echo '  const value = {'                                                         >> ${FOLDER^}Context.js ;
echo '    //? state'                                                             >> ${FOLDER^}Context.js ;
echo '    loading,'                                                              >> ${FOLDER^}Context.js ;
echo ''                                                                          >> ${FOLDER^}Context.js ;
echo '    //? helpers'                                                           >> ${FOLDER^}Context.js ;
echo ''                                                                          >> ${FOLDER^}Context.js ;
echo '    //? async'                                                             >> ${FOLDER^}Context.js ;
echo '  };'                                                                      >> ${FOLDER^}Context.js ;
echo ''                                                                          >> ${FOLDER^}Context.js ;
echo '  return <Untitled.Provider value={value}>{children}</Untitled.Provider>;' >> ${FOLDER^}Context.js ;
echo '};'                                                                        >> ${FOLDER^}Context.js ;
echo ''                                                                          >> ${FOLDER^}Context.js ;
echo '/**'                                                                       >> ${FOLDER^}Context.js ;
echo ' * @description For intellisense/hover data'                               >> ${FOLDER^}Context.js ;
echo ' * @returns {typeof initialState}'                                         >> ${FOLDER^}Context.js ;
echo ' */'                                                                       >> ${FOLDER^}Context.js ;
echo 'const useUntitled = () => {'                                               >> ${FOLDER^}Context.js ;
echo '  return useContext(Untitled);'                                            >> ${FOLDER^}Context.js ;
echo '};'                                                                        >> ${FOLDER^}Context.js ;
echo ''                                                                          >> ${FOLDER^}Context.js ;
echo 'export { UntitledProvider, useUntitled };'                                 >> ${FOLDER^}Context.js ;
echo ''                                                                          >> ${FOLDER^}Context.js ;
}

JSDoc_init_test() {
  cd $VSC_CDIR ; touch tester.d.js testtwo.d.js ; test_itit tester ; test_itit testtwo ;
}

test_itit() {
  local FILENAME="$1" ; test_write ;
}

test_write() {
  echo ' * @typedef {Object} '$FILENAME'Props' >> ${FILENAME}.d.js ;
}

JSDoc_init() {
  cd $VSC_CDIR ;

  touch AnimateHeight.d.js AnimateView.d.js AudioPlayer.d.js Banner.d.js Button.d.js ButtonGroup.d.js Checkbox.d.js CheckSelect.d.js DateInput.d.js Drawer.d.js DropDown.d.js Dropzone.d.js ErrorBoundary.d.js GenericGrid.d.js hooks.d.js Icon.d.js Input.d.js Loader.d.js Modal.d.js MultiPageForm.d.js MultiSelect.d.js Notes.d.js NotesMentions.d.js Paper.d.js Progress.d.js Rollup.d.js Select.d.js SinglePageForm.d.js Snackbar.d.js Table.d.js Tabs.d.js Tasks.d.js Textarea.d.js TextInput.d.js Translation.d.js Typography.d.js Uploader.d.js ;

  touch JSDoc_write AnimateHeight ; JSDoc_write AnimateView ; JSDoc_write AudioPlayer ; JSDoc_write Banner ; JSDoc_write Button ; JSDoc_write ButtonGroup ; JSDoc_write Checkbox ; JSDoc_write CheckSelect ; JSDoc_write DateInput ; JSDoc_write Drawer ; JSDoc_write DropDown ; JSDoc_write Dropzone ; JSDoc_write ErrorBoundary ; JSDoc_write GenericGrid ; JSDoc_write hooks ; JSDoc_write Icon ; JSDoc_write Input ; JSDoc_write Loader ; JSDoc_write Modal ; JSDoc_write MultiPageForm ; JSDoc_write MultiSelect ; JSDoc_write Notes ; JSDoc_write NotesMentions ; JSDoc_write Paper ; JSDoc_write Progress ; JSDoc_write Rollup ; JSDoc_write Select ; JSDoc_write SinglePageForm ; JSDoc_write Snackbar ; JSDoc_write Table ; JSDoc_write Tabs ; JSDoc_write Tasks ; JSDoc_write Textarea ; JSDoc_write TextInput ; JSDoc_write Translation ; JSDoc_write Typography ; JSDoc_write Uploader ;
}

JSDoc_write() {
  local FILENAME="$1" ; _writeJSDocToFolderjs ;
}

_writeJSDocToFolderjs() {
  echo 'import {'                                                >> ${FILENAME}.d.js ;
  echo '  ReactFC,'                                              >> ${FILENAME}.d.js ;
  echo '  ReactRefObj,'                                          >> ${FILENAME}.d.js ;
  echo '  ComponentProp,'                                        >> ${FILENAME}.d.js ;
  echo '  ReactEventHandler,'                                    >> ${FILENAME}.d.js ;
  echo '} from "./utils/utils.d";'                               >> ${FILENAME}.d.js ;
  echo ''                                                        >> ${FILENAME}.d.js ;
  echo '/**'                                                     >> ${FILENAME}.d.js ;
  echo ' * Add your name if you make changes'                    >> ${FILENAME}.d.js ;
  echo ' * @author Derek Nellis | (name)'                        >> ${FILENAME}.d.js ;
  echo ' */'                                                     >> ${FILENAME}.d.js ;
  echo ''                                                        >> ${FILENAME}.d.js ;
  echo '/**'                                                     >> ${FILENAME}.d.js ;
  echo ' * @component '$FILENAME''                               >> ${FILENAME}.d.js ;
  echo ' *'                                                      >> ${FILENAME}.d.js ;
  echo ' * @typedef {Object} '$FILENAME'Props'                   >> ${FILENAME}.d.js ;
  echo ' * @property {ReactRefObj<undefined>} [ref]'             >> ${FILENAME}.d.js ;
  echo ' * @property {ComponentProp} [component]'                >> ${FILENAME}.d.js ;
  echo ' * @property {ReactEventHandler} [onChange]'             >> ${FILENAME}.d.js ;
  echo ' *'                                                      >> ${FILENAME}.d.js ;
  echo ' * @typedef {ReactFC<'$FILENAME'Props>} '$FILENAME'Type' >> ${FILENAME}.d.js ;
  echo ' */'                                                     >> ${FILENAME}.d.js ;
  echo ''                                                        >> ${FILENAME}.d.js ;
}
