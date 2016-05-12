export PATH=$PATH:./node_modules/.bin
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

autoload -U add-zsh-hook

load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc
