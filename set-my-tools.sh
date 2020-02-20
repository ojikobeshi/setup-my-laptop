[ ! -e "/Applications/Spectacle.app" ] && brew cask install spectacle
[ ! -e "/Applications/Google Chrome.app" ] && brew cask install google-chrome

[ ! -e "/Applications/Google Chrome Canary.app" ] && brew cask install homebrew/cask-versions/google-chrome-canary
[ ! -e "/Applications/Firefox.app" ] && brew cask install firefox
[ ! -e "/Applications/Firefox Developer Edition.app" ] && brew cask install firefox-developer-edition

[ ! -e "/Applications/Android Studio.app" ] && brew cask install android-studio
[ ! -e "/Applications/Brackets.app" ] && brew cask install brackets

# install node.js
brew install npm

# install vagrant 
brew cask install vagrant

# install virtualbox; requires security permission via preferences
brew cask install virtualbox virtualbox-extension-pack

if [ ! -e "~/.bash_it/install.sh" ]; then
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    bash ~/.bash_it/install.sh
fi

# in case needing git-completion, check .bash_profile for the following
# if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
#   . /usr/local/etc/bash_completion.d/git-completion.bash
# fi

# https://docs.cloudfoundry.org/cf-cli/install-go-cli.html
brew tap cloudfoundry/tap
brew install cf-cli


brew cask install postman
brew cask install insomnia