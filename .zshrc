export PATH=$PATH:$HOME/.inkaku/bin

source <(cat $(tail -r "$HOME/.list" | awk -v home="$HOME" '{print home"/"$0"/.zshrc"}') 2> /dev/null)

alias i='inkaku'
