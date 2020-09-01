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

Install `wget`.

```
$ brew install wget
```

Install GnuPG to enable PGP-signing commits.

```
$ brew install gnupg
```

Install more recent versions of some macOS tools

```
$ brew install grep
$ brew install openssh
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
$ brew install bat
$ brew install fzf
$ brew install diff-so-fancy
```

Install macOS clipboard support

```
$ brew install reattach-to-user-namespace
```

Remove outdated versions from the cellar.

```
$ brew cleanup
```

Configure `git` to use `diff-so-fancy` and add some nice colours

```
$ git config --global core.pager "diff-so-fancy | less --tabs=4 -RFX"

$ git config --global color.ui true

$ git config --global color.diff-highlight.oldNormal    "red bold"
$ git config --global color.diff-highlight.oldHighlight "red bold 52"
$ git config --global color.diff-highlight.newNormal    "green bold"
$ git config --global color.diff-highlight.newHighlight "green bold 22"

$ git config --global color.diff.meta       "yellow"
$ git config --global color.diff.frag       "magenta bold"
$ git config --global color.diff.commit     "yellow bold"
$ git config --global color.diff.old        "red bold"
$ git config --global color.diff.new        "green bold"
$ git config --global color.diff.whitespace "red reverse"
```

Sort out the MacOS defaults by running these: https://gist.github.com/remotealex/156eef96494d66696cb13fb334ff4273
