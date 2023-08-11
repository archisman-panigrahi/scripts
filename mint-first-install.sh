sudo add-apt-repository ppa:inkscape.dev/stable
sudo add-apt-repository ppa:mati75/gimp30
sudo add-apt-repository ppa:libreoffice-ppa
sudo add-apt-repository ppa:libreoffice/ppa
sudo add-apt-repository ppa:apandada1/foliate
sudo add-apt-repository ppa:apandada1/blanket
sudo add-apt-repository ppa:apandada1/marker
sudo add-apt-repository ppa:apandada1/xournalpp-stable
sudo add-apt-repository ppa:apandada1/wike

sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'

sudo apt update

curl -fsSL https://install.julialang.org | sh -s -- -y

mkdir "${HOME}/.npm-packages"
sudo apt  install npm -y && npm config set prefix "${HOME}/.npm-packages"
npm install -g insect

gsettings set org.cinnamon.desktop.wm.preferences button-layout "close,minimize,maximize:"

git clone https://github.com/foundObjects/zram-swap.git
cd zram-swap/
sudo ./install.sh

sudo apt install foliate octave wike xournalpp marker blanket gimp inkscape python-is-python3 python3-numpy python3-scipy mypaint jupyter-notebook github-desktop npm cpufetch plank ibus-avro python3-octave-kernel vlc okular texstudio texlive-full code stellarium -y
sudo updatedb
