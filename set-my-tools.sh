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

if [ ! -e "${HOME}/.bash_it/install.sh" ]; then
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    bash ~/.bash_it/install.sh
fi

# brew install bash-completion

GIT_COMPLETION_ADDED="## added bash_profile_git_completion"

echo "Last 10 lines of current bash_profile"
tail -10  ~/.bash_profile

if [ -z `grep "${GIT_COMPLETION_ADDED}" ~/.bash_profile` ]; then
    cat `pwd`/.bash_profile_git-completion >> ~/.bash_profile
    echo "Current bash_profile updated."
fi

# https://docs.cloudfoundry.org/cf-cli/install-go-cli.html
brew tap cloudfoundry/tap
brew install cf-cli


brew cask install postman
brew cask install insomnia