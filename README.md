# dotfiles
Dotfiles

Initializing the repo

```bash
git init --bare $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotiles/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
```

Connect to the remote repo

```bash
config remote add origin git@github.com:isccarrasco/dotfiles.git
```

config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push

## Replication
```bash
git clone --separate-git-dir=$HOME/.my-dotfiles https://github.com/Siilwyn/my-dotfiles.git my-dotfiles-tmp
rsync --recursive --verbose --exclude '.git' my-dotfiles-tmp/ $HOME/
rm --recursive my-dotfiles-tmp
```

## Configuration
```bash
mydotfiles config status.showUntrackedFiles no
mydotfiles remote set-url origin git@github.com:Siilwyn/my-dotfiles.git
```

## Usage
```bash
mydotfiles status
mydotfiles add .gitconfig
mydotfiles commit -m 'Add gitconfig'
mydotfiles push
```
--
[new reference](https://www.simplicidade.org/survival/dotfiles/)
#Setup on a new server
When you get to a new server, use this process to start with a copy of your dotfiles:

```bash
git clone --separate-git-dir=$HOME/.dotfiles <you_repo_location> my-dotfiles-tmp
rsync -av --exclude '.git' my-dotfiles-tmp/ $HOME/ ## this will overwrite any files with the same name!!
rm -rf my-dotfiles-tmp
```
