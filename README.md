# dotfiles
Dotfiles

## Initializing

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

dotfiles status
dotfiles add .vimrc
dotfiles commit -m "Add vimrc"
dotfiles add .bashrc
dotfiles commit -m "Add bashrc"
dotfiles push

## Replication
```bash
git clone --separate-git-dir=$HOME/.dotfiles [https://github.com/isccarrasco/dotfiles.git](https://github.com/isccarrasco/dotfiles.git) dotfiles-tmp
rsync --recursive --verbose --exclude '.git' dotfiles-tmp/ $HOME/
rm --recursive dotfiles-tmp
alias dotfiles='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
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
