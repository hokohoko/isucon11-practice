include env.sh

# 変数定義

.PHONY: set-up
set-up: install-tools git-setup

.PHONY: install-tools
install-tools:
        sudo apt update
        sudo apt update
        # percona-toolkit:mysql
        sudo apt install -y percona-toolkit dstat git unzip snapd graphviz tree
        # alp install
        wget https://github.com/tkuchiki/alp/releases/download/v1.0.21/alp_linux_amd64.tar.gz
        tar zxvf alp_linux_amd64.tar.gz
        sudo install alp /usr/local/bin/alp
        rm alp_linux_amd64.tar.gz


.PHONY: git-setup
git-setup:
        git config --global user.email "tadak.0v0@gmail.com"
        git config --global user.name "tada"
        # deploy ssh key
        ssh-keygen -t ed25519
