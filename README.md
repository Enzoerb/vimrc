# My NeoVim Configurations

After leaving vim, using VSCode for 1 year and Emacs for another 1.5 years, I am
glad to go back to vim (actually NeoVim this time) so I searched for some config
stuff, watched some videos, found out some usefull plugins based on stuff that I
actually use and here we go.

I am saving this config here to have a backup and to be able to access it easily
from other places (and yes, I used packer and not lazy, it was working well enough
and I started my config watching The Primeagen video on it. Before I was not
familiarized with lua and only used .vimrc with Plug, this feels more organized).

## Installation Steps

1. Install [NeoVim](https://github.com/neovim/neovim)
2. Install [Packer](https://github.com/wbthomason/packer.nvim)
3. clone this repo into your ~/.config/nvim or where you keep your vim config.
and then just run :PackerSync
4. for [hexokinase](https://github.com/RRethy/vim-hexokinase) you might need to run make after installing it

_make sure the remaps make sense to you, I have disabled arrow key navigation but
you can comment everything on "Proper Navigation" and there is also some navigation
for moving through words that I have setup on Easy navigation (I think learning
the baseics on h, j, k, l, b, w, ... makes more sense though)_

## Greetings

Thanks for [The Primeagen](https://www.youtube.com/@ThePrimeTimeagen), [TJ](https://www.youtube.com/@teej_dv) and [typecraft](https://www.youtube.com/@typecraft_dev) for the amazing videos 
that helped me to get this config right faster and also
for all the maintainers of NeoVim or any of the packeges I am using, including
packer itself
