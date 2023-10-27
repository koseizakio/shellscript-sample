#!/bin/bash
#アップデート
sudo apt update -y
sudo apt upgrade -y

#インストール
sudo mysql_secure_installation
sudo apt install software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get install php7.4 php7.4-pdo -y
sudo apt-get install -y php7.4-cli php7.4-json php7.4-common php7.4-mysql php7.4-zip php7.4-gd php7.4-mbstring php7.4-curl php7.4-xml php7.4-bcmath


#インストール
sudo apt install git -y
git clone https://github.com/koseizakio/PHP7-Contact-form-basic.git
sudo mv /home/ubuntu/PHP7-Contact-form-basic/* /var/www/html/

# Git cloneしたディレクトリーは削除しておくことをおすすめします。
rm -rf PHP7-Contact-form-basic/