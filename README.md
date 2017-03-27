# My Dotfiles

## Dotfiles list

* i3
* i3status
* fish
* Xsession
 * Xterm
 * rxvt-unicode
* xprofile

## How to install

First you have to make sure you installed `stow` then you only have to do is

```
stow -t $HOME -v <dotfile-name>
```

`-t` to specify target directory this is needed if your dotfiles directory located other than your home directory.
`-v` to enable verbose mode.

For example if you want to install i3 configurations you only have to do:

```
stow -t $HOME -v i3
```

For config files that should located under `/etc` directory, you need to do it with `sudo`:

```
sudo stow -t /etc/ -v resolvconf
```

## vim

For vim we need to install plugin manager `Vundle` to install all configured plusings.

```
stow -t $HOME -v vimrc
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim
:PluginInstall
```
