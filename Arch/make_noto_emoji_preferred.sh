#!/bin/sh
# https://dev.to/darksmile92/get-emojis-working-on-arch-linux-with-noto-fonts-emoji-2a9
set -e
if [[ $(id -u) -ne 0 ]] ; then echo "Please run as root" ; exit 1 ; fi
echo "Setting up Noto Emoji font..."
# 1 - install  noto-fonts-emoji package
pacman -S noto-fonts-emoji --needed
# pacman -S powerline-fonts --needed
echo "Recommended system font: inconsolata regular (ttf-inconsolata or powerline-fonts)"
# 2 - add font config to /etc/fonts/conf.d/01-notosans.conf
echo "<?xml version=\"1.0\"?>
<!DOCTYPE fontconfig SYSTEM \"fonts.dtd\">
<fontconfig>
 <alias>
   <family>sans-serif</family>
   <prefer>
     <family>Noto Sans</family>
     <family>Joy Pixels</family>
     <family>Noto Color Emoji</family>
     <family>Noto Emoji</family>
     <family>DejaVu Sans</family>
   </prefer> 
 </alias>

 <alias>
   <family>serif</family>
   <prefer>
     <family>Noto Serif</family>
     <family>Joy Pixels</family>
     <family>Noto Color Emoji</family>
     <family>Noto Emoji</family>
     <family>DejaVu Serif</family>
   </prefer>
 </alias>
<alias>
		<family>sans</family>
		<prefer>
			 <family>Noto Sans</family>
			 <family>Joy Pixels</family>
			 <family>Noto Color Emoji</family>
		</prefer>
	</alias>
 <alias>
  <family>monospace</family>
  <prefer>
    <family>JetBrains Mono</family>
    <family>Noto Mono</family>
    <family>Noto Color Emoji</family>
    <family>Noto Emoji</family>
    <family>DejaVu Sans Mono</family>
   </prefer>
 </alias>
</fontconfig>

" > /etc/fonts/local.conf
# 3 - update font cache via fc-cache
fc-cache
echo "Noto Emoji Font installed! You may need to restart applications like chrome. If chrome displays no symbols or no letters, your default font contains emojis."
echo "consider inconsolata regular"
