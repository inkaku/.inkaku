export PATH=$PATH:$HOME/.inkaku/bin

source <(cat $(tail -r ~/.inkaku/${USER}/.zshlist | awk -v home="${HOME}" '{print home"/.inkaku/"$0"/.zshrc"}'))
