<div align="center">

<img src="https://affanindo.github.io/img/xfce/xfce-busy.png" />

<br />
<br />

[![forthebadge](https://forthebadge.com/images/badges/gluten-free.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/no-ragrets.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/powered-by-electricity.svg)](https://forthebadge.com)

<p>This is my Linux setup. Every folder is managed using GNU Stow.</p>
</div>

---

## How To Install
* Clone this repo directly to your home folder.
* Install GNU Stow.
* Delete/rename/move the real dotfile you want to install.
* `cd` to this repo.
* Run command `stow <folder>`
* Watch as stow create symlink to your dotfiles.

## Misc
* To swap caps lock and esc, run `setxkbmap -option caps:swapescape` on startup.
* For Rofi, launch `rofi -modi "drun" -show drun -display-drun "launch" -show-icons -icon-theme Papirus-Maia -theme solarized -kb-cancel "Escape,Control+g,Control+bracketleft,Control+c" -kb-accept-entry "Control+m,Return,KP_Enter" -kb-row-down "Down,Control+n,Control+j" -kb-remove-to-eol "" -kb-row-up "Up,Control+p,ISO_Left_Tab,Control+k"`

**NOTE: THIS README IS NOT A TUTORIAL HOW TO USE GNU STOW. FOR BEST PRACTICE, SEEK OTHER TUTORIAL. THIS README IS JUST A REMINDER FOR MYSELF.**

