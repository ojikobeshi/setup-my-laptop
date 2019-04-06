# brew install php-cs-fixer 
# brew install composer

[ -e `which code` ] && code --install-extension DavidAnson.vscode-markdownlint
[ -e `which code` ] && code --install-extension letmaik.git-tree-compare
[ -e `which code` ] && code --install-extension eamodio.gitlens
# [ -e `which code` ] && code --install-extension esbenp.prettier-vscode
[ -e `which code` ] && code --install-extension hookyqr.beautify



[ ! -e "/Applications/Spectacle.app" ] && brew cask install spectacle
[ ! -e "/Applications/Google Chrome.app" ] && brew cask install google-chrome

[ ! -e "/Applications/Google Chrome Canary.app" ] && brew cask install homebrew/cask-versions/google-chrome-canary
[ ! -e "/Applications/Firefox.app" ] && brew cask install firefox
[ ! -e "/Applications/Firefox Developer Edition.app" ] && brew cask install firefox-developer-edition

[ ! -e "/Applications/Android Studio.app" ] && brew cask install android-studio

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