# Installation

```
cd ~
git clone git@github.com:bsimpson/.vim.git
```

Install ViM extensions:

```
cd ~/.vim
git submodule init
git submodule update
```

# Notes for adding ViM plugins via Pathogen:

```
git submodule add git://path/to/repo bundle/name_of_project
```

this creates an entry in .gitmodules

```
git submodule init
```

check that this is in .git/config

```
git submodule update
```

this updates the module

Pathogen will load projects under bundle automatically via `.vimrc` call Pathogen#infect()

Commit submodule so this will be available in the remote repo

# Linking ALL the dot files:

```
ln -s .vim/.{vimrc,rdebugrc,irbrc,gemrc,bashrc,gitconfig} ~
```

# OR Linking just the vim dot file:

```
ln -s .vim/.vimrc ~
```

# OS X Notes

Apple doesn't read the `~/.bashrc`. It reads the following:

* `/etc/profile`
* `~/.bash_profile`
* `~/.bash_login`
* `~/.profile`

My solution was to create a symlink to `~/.profile`:

```
ln -s ~/.bashrc ~/.profile
```

# Git PS1 formatting:

Install git via brew, or other means. Locate the directory in the git installation. 
e.g.: `/usr/local/opt/git/etc/bash_completion.d/`

Change this line to match your path in the `~/.bashrc` file. You should see the branch name show in your PS1 
prompt when you are in directories that have a git repository initialized.  

# Installing Ruby

This `~/.bashrc` profile already comes with rbenv integration (towards the bottom when we call rbenv init -). Just install rbenv, then use rbenv to install your Ruby version(s)

* Download and install brew
* `brew install rbenv`
* `rbenv list rubies`
* `rbenv install xxx`
* `rbenv global xxx`
