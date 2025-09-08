# dotfiles
Dotfiles

Initializing the repo

```
git init --bare $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotiles/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.zshrc
```

Connect to the remote repo
