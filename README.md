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

Go to https://valloric.github.io/YouCompleteMe/#installation and follow the YCM install instructions (including installing macvim `brew install macvim`).

Install the tern server by running `npm install` in the `~/.vim/bundle/tern_for_vim` directory.

Install the silver searcher `brew install the_silver_searcher` (for searching in vim)

Install GNU core utilities (those that come with macOS are outdated).
Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.

```
$ brew install coreutils
```

Install Bash 4.

Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.

```
$ brew install bash
$ brew install bash-completion2
$ chsh -s /usr/local/bin/bash
```

Install `wget` with IRI support.

```
$ brew install wget --with-iri
```

Install GnuPG to enable PGP-signing commits.

```
$ brew install gnupg
```

Install more recent versions of some macOS tools

```
$ brew install grep
$ brew install openssh
$ brew install screen
```

Install font tools

```
$ brew tap bramstein/webfonttools
$ brew install sfnt2woff
$ brew install sfnt2woff-zopfli
$ brew install woff2
```

Install other useful binaries

```
$ brew install ssh-copy-id
$ brew install tree
$ brew install tmux
```

Install macOS clipboard support

```
$ brew install reattach-to-user-namespace
```

Remove outdated versions from the cellar.

```
$ brew cleanup
```

Sort out the MacOS defaults by running these: https://gist.github.com/alexpriceonline/156eef96494d66696cb13fb334ff4273
