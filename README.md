# .inkaku
{i}

## install guide

if you're clean mac,

install Xcode or `xcode-select --install`

and

run

```sh
git clone https://github.com/inkaku/.inkaku.git $HOME/.inkaku

bash $HOME/.inkaku/install
```

else if you're brew installed mac

```sh
brew tap Homebrew/bundle

brew bundle --file=$HOME/.inkaku/Brewfile

echo 'source $HOME/.inkaku/inkaku.zsh' >> $HOME/.zshrc
mkdir -p $HOME/.inkaku/zsh
```

## shared env

you can share setup env module cut

like

`inkaku install hiroqn/node`

this run

```sh
brew bundle --file=~/.inkaku/hiroqn/node/Brewfile
zsh ~/.inkaku/hiroqn/node/install
ln -sf ~/.inkaku/hiroqn/node/.zshrc ~/.inkaku/zsh/hiroqn/node/.zshrc
```
