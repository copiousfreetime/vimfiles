# Jeremy's Vimfiles

## Is it any good?

Yes.

## Installation

1. Clone this repo `git clone git@github.com:copiousfreetime/vimfiles.git`
2. Link the clone to `~/.config/nvim`. `mkdir -p ~/.config && ln -s <location of vimfiles repo> ~/.config/nvim`
3. start vim
4. `:PlugInstall`

## Commands

| Command                             | Description                                                        |
| ----------------------------------- | ------------------------------------------------------------------ |
| `PlugInstall [name ...] [#threads]` | Install plugins                                                    |
| `PlugUpdate [name ...] [#threads]`  | Install or update plugins                                          |
| `PlugClean[!]`                      | Remove unused directories (bang version will clean without prompt) |
| `PlugUpgrade`                       | Upgrade vim-plug itself                                            |
| `PlugStatus`                        | Check the status of plugins                                        |
| `PlugDiff`                          | Examine changes from the previous update and the pending changes   |
| `PlugSnapshot[!] [output path]`     | Generate script for restoring the current snapshot of the plugins  |


## Credits and inspiration

This is a further customization of [Nathan's vimfiles](https://github.com/aniero/vimfiles)

And then a switch to [vim-plug](https://github.com/junegunn/vim-plug)

* [bleything's dotvim](https://github.com/bleything/dotvim)
* [mattly's dotfiles](https://github.com/mattly/dotfiles)
* [skwp's dotfiles](https://github.com/skwp/dotfiles)
* [scrooloose's vimfiles](https://github.com/scrooloose/vimfiles)

