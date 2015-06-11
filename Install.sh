 #!/bin/sh

yellow_echo() {
    echo "\033[1;33m\n>>>>> $1\033[0m"
}

ta_has() {
    type "$1" > /dev/null 2>&1
}

#ta_confirm() {
    #read -p "Are you sure? " -n 1 -r
    #echo    # (optional) move to a new line
    #if [[ $REPLY =~ ^[Yy]$ ]]
    #then
        # do dangerous stuff
    #fi
#}

clear

# homebrew
yellow_echo 'Installing Homebrew ... '
if ta_has 'brew'; then
    echo '\033[1;33m`Homebrew`\033[0m is already installed. Do u need it reintall?'
    read -p '(no/yes)' -n 1 -r 
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # do dangerous stuff
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    fi
else
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Git
yellow_echo 'Installing Git ... '
if ta_has 'git'; then
    echo '\033[1;33m`Git`\033[0m is already installed. Do u need it reintall?'
    read -p '(no/yes)' -n 1 -r 
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # do dangerous stuff
        brew install git
    fi
else
    brew install git
fi

# nginx by brew
yellow_echo 'Installing nginx by `brew` ... '
if ta_has 'nginx'; then
    echo '\033[1;33m`Nginx`\033[0m is already installed. Do u need it reintall?'
    read -p '(no/yes)' -n 1 -r 
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # do dangerous stuff
        brew install nginx
    fi
else
    brew install nginx
fi

# nvm
rm -rf nvm
yellow_echo 'Installing nvm...'
if ta_has 'nvm'; then
    read -p '`nvm` is already installed. Do u need it reintall?' -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # do dangerous stuff
        git clone http://gitlab.alibaba-inc.com/node/nvm.git
        source nvm/nvm.sh
    fi
else
    git clone http://gitlab.alibaba-inc.com/node/nvm.git
    source nvm/nvm.sh
fi

# nodejs by nvm
yellow_echo 'Installing Nodejs@0.11 by `nvm` ... '
nvm install 0.11

yellow_echo 'Installing Nodejs@0.12 by `nvm` ... '
nvm install 0.12

# tnpm
yellow_echo 'Installing tnpm...'
if ta_has 'tnpm'; then
    echo '\033[1;33m`tnpm`\033[0m is already installed. Do u need it reintall?'
    read -p '(no/yes)' -n 1 -r 
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # do dangerous stuff
        sudo npm install -g tnpm --registry=http://registry.npm.alibaba-inc.com
    fi
else
    sudo npm install -g tnpm --registry=http://registry.npm.alibaba-inc.com
fi

# bower
yellow_echo 'Installing bower...'
if ta_has 'bower'; then
    echo '\033[1;33m`bower`\033[0m is already installed. Do u need it reintall?'
    read -p '(no/yes)' -n 1 -r 
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # do dangerous stuff
        sudo tnpm install -g bower
    fi
else
    sudo tnpm install -g bower
fi

# gulp
yellow_echo 'Installing gulp...'
if ta_has 'gulp'; then
    echo '\033[1;33m`gulp`\033[0m is already installed. Do u need it reintall?'
    read -p '(no/yes)' -n 1 -r 
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # do dangerous stuff
        sudo tnpm install -g gulp
    fi
else
    sudo tnpm install -g gulp
fi

# adam
yellow_echo 'Installing adam...'
if ta_has 'adam'; then
    echo '\033[1;33m`adam`\033[0m is already installed. Do u need it reintall?'
    read -p '(no/yes)' -n 1 -r 
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # do dangerous stuff
        sudo tnpm install -g @ali/adam
    fi
else
    sudo tnpm install -g @ali/adam
fi

# awp
yellow_echo 'Installing awp...'
if ta_has 'awp'; then
    echo '\033[1;33m`awp`\033[0m is already installed. Do u need it reintall?'
    read -p '(no/yes)' -n 1 -r 
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # do dangerous stuff
        sudo tnpm install -g or-awp
    fi
else
    sudo tnpm install -g or-awp
fi

# ppa
yellow_echo 'Installing ppa...'
if ta_has 'ppa'; then
    echo '\033[1;33m`ppa`\033[0m is already installed. Do u need it reintall?'
    read -p '(no/yes)' -n 1 -r 
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # do dangerous stuff
        sudo tnpm install -g @ali/ppa
    fi
else
    sudo tnpm install -g @ali/ppa
fi

# tbupload
yellow_echo 'Installing tbupload...'
if ta_has 'tbupload'; then
    echo '\033[1;33m`tbupload`\033[0m is already installed. Do u need it reintall?'
    read -p '(no/yes)' -n 1 -r 
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # do dangerous stuff
        sudo tnpm install -g @ali/or-uploadimg 
    fi
else
    sudo tnpm install -g @ali/or-uploadimg
fi

# browserify
yellow_echo 'Installing browserify...'
if ta_has 'browserify'; then
    echo '\033[1;33m`browserify`\033[0m is already installed. Do u need it reintall?'
    read -p '(no/yes)' -n 1 -r 
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # do dangerous stuff
        sudo tnpm install -g browserify 
    fi
else
    sudo tnpm install -g browserify
fi

