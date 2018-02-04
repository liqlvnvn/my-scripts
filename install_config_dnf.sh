sudo dnf install -y kernel-devel xfce4-terminal firefox

#sudo chmod -x /usr/lib/x86_64-linux-gnu/hud/hud-service
PATH=$PATH:/usr/local/bin:/root/.local/bin
#export PATH

sudo dnf install -y git
#cd ~Document
#git clone https://github.com/liqlvnvn/my-scripts/

cd ~
git init 
git remote add origin https://github.com/liqlvnvn/settings
git fetch --all
git reset --hard origin/master

sudo dnf install -y vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# sudo dnf install ssh tightvncserver tightvncviewer

sudo dnf install -y fish
chsh -s /usr/bin/fish

# emacs
# установить linum+ (просто скачать файл)

# python
sudo dnf install -y pip3
pip3 install --user virtualenv

# haskell
# stack 
# https://github.com/commercialhaskell/stack/wiki/Downloads
#sudo dnf install -y haskell-stack
#sudo dnf install libghc-zlib-dev  libghc-zlib-bindings-dev
sudo dnf install zlib-devel
curl -sSL https://get.haskellstack.org/ | sh
stack upgrade
stack setup
stack install hlint hasktags hoogle

# ctags for vim
# sudo dnf install ctags
