# dotfiles
Dotfiles

## Setup

Initializing the repo with bare option.

```bash
git init --bare $HOME/.dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles config --local status.showUntrackedFiles no
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
```

Connect to the remote repo

```bash
dotfiles remote add origin git@github.com:isccarrasco/dotfiles.git
```

Adding configuration files to the repo

```bash
dotfiles status
dotfiles add .vimrc
dotfiles commit -m "Add vimrc"
dotfiles add .bashrc
dotfiles commit -m "Add bashrc"
dotfiles push
```

## Replication
```bash
git clone --separate-git-dir=$HOME/.dotfiles git@github.com:isccarrasco/dotfiles.git dotfiles-tmp
rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
rm --recursive dotfiles-tmp
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

## Configuration
```bash
dotfiles config status.showUntrackedFiles no
dotfiles remote set-url origin git@github.com:isccarrasco/dotfiles.git
```

## Usage
```bash
dotfiles status
dotfiles add .gitconfig
dotfiles commit -m 'Add gitconfig'
dotfiles push
```
---
## [new reference](https://www.simplicidade.org/survival/dotfiles/)

## Setup on a new server
When you get to a new server, use this process to start with a copy of your dotfiles:

```bash
git clone --separate-git-dir=$HOME/.dotfiles git@github.com:isccarrasco/dotfiles.git dotfiles-tmp
rsync -av --exclude '.git' dotfiles-tmp/ $HOME/ ## this will overwrite any files with the same name!!
rm -rf my-dotfiles-tmp
```
