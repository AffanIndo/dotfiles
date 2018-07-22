<div align="center">

<img src="https://affanindo.github.io/img/xfce/xfce-busy.png" />

<br />
<br />

[![forthebadge](https://forthebadge.com/images/badges/gluten-free.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/no-ragrets.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/powered-by-electricity.svg)](https://forthebadge.com)

<p>This is my Linux setup. Every folder except "windows" is managed using GNU Stow.</p>
</div>

---

## Minimal

There is a minimal version of this dotfiles in `./minimal/`. I use for a setup that I want to keep bloat-free.

The `.Xresources` in that folder is the same as the one in the `./urxvt/`. Use the normal `.Xresources` if you want to use URxvt on minimal setup.

## How To Install
* Clone this repo directly to your home folder.
* Install GNU Stow.
* Delete/rename/move the real dotfile you want to install.
* `cd` to this repo.
* Run command `stow <folder>`
* Watch as stow create symlink to your dotfiles.

**NOTE: THIS README IS NOT A TUTORIAL HOW TO USE GNU STOW. FOR BEST PRACTICE, SEEK OTHER TUTORIAL. THIS README IS JUST A REMINDER FOR MYSELF.**

