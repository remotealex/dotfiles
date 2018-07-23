# Alex's Dotfiles

This repo is my newest rebuild of my dotfiles.
It was re-built from the ground up for use with macOS 10.13+

The focus is on easy terminal navigation and slick vim and tmux configs.

Once cloned, symlink all of the files to your home dir.

```
$ ln -s ~/projects/dotfiles/.* ~/
```

Then remove the git dir

```
$ rm -rf ~/.git
```

Manually install Vundle

```
$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Open `vim` and install the plugins:

```
:VundleInstall
```

Install homebrew from https://brew.sh

Install tmux `brew install tmux`

Go to https://valloric.github.io/YouCompleteMe/#installation and follow the YCM install instructions (including installing macvim `brew install macvim`).

Install the tern server by running `npm install` in the `~/.vim/bundle/tern_for_vim` directory.

Install the silver searcher `brew install the_silver_searcher` (for searching in vim)
