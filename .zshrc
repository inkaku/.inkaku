export PATH=$PATH:$HOME/.inkaku/bin
if [ ! $I_LIST_PATH ];then
  export I_LIST_PATH=".list"
fi
source <(cat $(tail -r "$HOME/$I_LIST_PATH" | awk '{if ($0) print $0"/.zshrc"}') 2> /dev/null)

alias i='inkaku'
