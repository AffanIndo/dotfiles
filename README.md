# dotfiles
This is my Linux setup. Every folder except "windows" is managed using GNU Stow.

## How To Install
* Clone this repo directly to your home folder.
* Install GNU Stow.
* Delete/rename/move the real dotfile you want to install.
* `cd` to this repo.
* Run command `stow <folder>`
* Watch as stow create symlink to your dotfiles.
* If you stow Vim, after you have done that, then run `./vim_automata install` to install the plugins.
* Run `./vim_automata update` update to update the plugins.

**NOTE: THIS README IS NOT A TUTORIAL HOW TO USE GNU STOW. FOR BEST PRACTICE, SEEK OTHER TUTORIAL. THIS README IS JUST A REMINDER FOR MYSELF.**

