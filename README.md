# dotfiles

## Download

```bash
cd ~
git clone git://github.com/krisleech/dotfiles.git
```

## Quick Install 'common' dotfiles

Simulate a dry run first, then do it for real.

```bash
cd ~/dotfiles
./install_common --simulate -v
./install_common
```

The install script uses GNU `stow` to symlink the dotfiles in to place. `stow`
which will not overwite files, but will replace existing symlinks.

## Symlink dotfiles using GNU stow

```bash
cd ~/dotfiles/common
ls
stow --target=$HOME ack
stow --target=$HOME ag
stow --target=$HOME git
# etc.
```

## Manually symlink dotfiles

```bash
ln -s ~/dotfiles/common/git/.gitignore ~/.gitignore
# etc.
```

# dotfiles not in this project:

vimfiles
https://github.com/krisleech/vimfiles

zsh
https://github.com/robbyrussell/oh-my-zsh

fish
https://github.com/bpinto/oh-my-fish
