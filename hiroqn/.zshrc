echo "{i}"

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# _______  _______ __________________ _______  _
#(  ___  )(  ____ )\__   __/\__   __/(  ___  )( (    /|
#| (   ) || (    )|   ) (      ) (   | (   ) ||  \  ( |
#| |   | || (____)|   | |      | |   | |   | ||   \ | |
#| |   | ||  _____)   | |      | |   | |   | || (\ \) |
#| |   | || (         | |      | |   | |   | || | \   |
#| (___) || )         | |   ___) (___| (___) || )  \  |
#(_______)|/          )_(   \_______/(_______)|/    )_)

# 日本語ファイル名を表示可能にする
setopt print_eight_bit

# フローコントロールを無効にする
setopt no_flow_control

# '#' 以降をコメントとして扱う
setopt interactive_comments

# ディレクトリ名だけでcdする
setopt auto_cd

# cd したら自動的にpushdする
setopt auto_pushd

# 重複したディレクトリを追加しない
setopt pushd_ignore_dups

# = の後はパス名として補完する
setopt magic_equal_subst

# 同じコマンドをヒストリに残さない
setopt hist_ignore_all_dups

# ヒストリファイルに保存するとき、すでに重複したコマンドがあったら古い方を削除する
setopt hist_save_nodups

# スペースから始まるコマンド行はヒストリに残さない
setopt hist_ignore_space

# ヒストリに保存するときに余分なスペースを削除する
setopt hist_reduce_blanks

#同時に起動したzshのヒストリー共有
setopt share_history

# ヒストリをインクリメンタルに追加する
setopt inc_append_history

# 補完候補が複数あるときに自動的に一覧表示する
setopt auto_menu

# 明確なドットの指定なしで.から始まるファイルをマッチ
setopt globdots

# 高機能なワイルドカード展開を使用する
setopt extended_glob

# Unicode の正規化に関する問題を吸収
setopt combining_chars

#  _______  _       _________ _______  _______
# (  ___  )( \      \__   __/(  ___  )(  ____ \
# | (   ) || (         ) (   | (   ) || (    \/
# | (___) || |         | |   | (___) || (_____
# |  ___  || |         | |   |  ___  |(_____  )
# | (   ) || |         | |   | (   ) |      ) |
# | )   ( || (____/\___) (___| )   ( |/\____) |
# |/     \|(_______/\_______/|/     \|\_______)

alias ls="ls -GFS"
alias la='ls -aA'
alias ll='ls -lh'
alias lal="ls -a -lA"

alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'

alias grep='grep --colour=auto'

alias p='popd'

# sudo の後のコマンドでエイリアスを有効にする
alias sudo='sudo '

# グローバルエイリアス
alias -g grepc='grep --colour=always'

# suffix aliases
alias -s js=node
alias -s es=babel-node
alias -s rb=ruby
alias -s py=python3
alias -s txt=vim

alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias sshc="vim ~/.ssh/config"

alias sshp=peco_select_ssh_host

zle -N peco_select_history
bindkey '^r' peco_select_history

eval "$(direnv hook zsh)"

alias ghc="stack ghc"
alias ghci="stack ghci"
