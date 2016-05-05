#         _________ _______ _________ _______  _______
#|\     /|\__   __/(  ____ \\__   __/(  ___  )(  ____ )|\     /|
#| )   ( |   ) (   | (    \/   ) (   | (   ) || (    )|( \   / )
#| (___) |   | |   | (_____    | |   | |   | || (____)| \ (_) /
#|  ___  |   | |   (_____  )   | |   | |   | ||     __)  \   /
#| (   ) |   | |         ) |   | |   | |   | || (\ (      ) (
#| )   ( |___) (___/\____) |   | |   | (___) || ) \ \__   | |
#|/     \|\_______/\_______)   )_(   (_______)|/   \__/   \_/
#

#--History--
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

function peco_select_history() {
  local tac
  if which tac > /dev/null; then
    tac="tac"
  else
    tac="tail -r"
  fi
  BUFFER=$(fc -l -n 1 | eval $tac | peco --query "$LBUFFER")
  CURSOR=$#BUFFER
  zle clear-screen
}

zle -N peco_select_history
bindkey '^r' peco_select_history

function peco_select_ssh_host() {
  local host
  host=$(grep -iE '^host' ~/.ssh/config | awk '{print $2}' | peco)
  if [ "$host" != '' ]; then
    ssh $@ $host
  fi
}

alias sshp=peco_select_ssh_host

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH=$PATH:$HOME/.inkaku/bin

for f in `find ~/.inkaku/zsh -name '.zshrc'`; do
  . $f
done

if [ -d ${HOME}/.inkaku/${USER} ]; then
  . ${HOME}/.inkaku/${USER}/.zshrc
fi
