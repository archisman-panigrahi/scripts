sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
sudo makepkg -si

### KDE Specific

sudo pacman -S plasma-desktop  plasma-wayland-session sddm
sudo systemctl enable sddm.service

sudo pacman -S okular gwenview partitionmanager kalzium kamoso kdeconnect latte-dock filelight ksysguard 

sudo pacman -S inkscape foliate blanket wike vlc firefox chromium telegram-desktop octave jupyter-notebook code freetube-bin geogebra github-desktop-bin globalprotect-openconnect marker kvantum texlive-basic texlive-latexextra texlive-latexrecommended texlive-mathscience texlive-plaingeneric texlive-xetex texstudio pdfarranger libreoffice-fresh micro

yay -S openblas-lapack
yay -S gimp-devel fcitx5-openbangla-git joplin-appimage noto-fonts-emoji-apple etcher-bin annotator insect julia-bin julia-bin megasync-bin dropbox stellarium-bin parabolic tex-match-bin boop-gtk-bin zoom simplescreenrecorder

## Afterwards, add appropriate lines to `/etc/environment` from https://github.com/archisman-panigrahi/dotfiles.git.

sudo pacman -S wget
wget https://raw.githubusercontent.com/archisman-panigrahi/dotfiles/main/arch-etc-environment-kde-wayland
sudo mv arch-etc-environment-kde-wayland /etc/environment
wget https://raw.githubusercontent.com/archisman-panigrahi/dotfiles/main/endeavouros%3C--Ubuntu.bashrc
mv endeavouros\<--Ubuntu.bashrc ~/.bashrc

## Then overwrite `$HOME/.config` and `$HOME/.local`
