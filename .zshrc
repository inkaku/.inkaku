export PATH=$PATH:$HOME/.inkaku/bin

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source <(cat $(tail -r ~/.inkaku/${USER}/module.list | awk -v home="${HOME}" '{print home"/.inkaku/"$0"/.zshrc"}'))

alias i='inkaku'
