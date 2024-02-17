#! /bin/bash

sudo apt update -y && sudo apt full-upgrade -y

curl https://getmic.ro | bash
sudo mv micro /usr/bin/

sudo apt install -yy git docker docker-compose docker.io zsh
sudo usermod -aG docker $USER

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sed -i "s/plugins=(git)/plugins=(git zsh-autosuggestions docker)/" ~/.zshrc
sudo -k chsh -s $(which zsh) $USER

# docker network create proxy