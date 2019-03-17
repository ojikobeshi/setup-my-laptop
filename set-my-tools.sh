# brew install php-cs-fixer 
# brew install composer

[ -e `which code` ] && code --install-extension DavidAnson.vscode-markdownlint

[ ! -e "/Applications/Spectacle.app" ] && brew cask install spectacle
[ ! -e "/Applications/Google Chrome.app" ] && brew cask install google-chrome

[ ! -e "/Applications/Google Chrome Canary.app" ] && brew cask install homebrew/cask-versions/google-chrome-canary
[ ! -e "/Applications/Firefox.app" ] && brew cask install firefox
[ ! -e "/Applications/Firefox Developer Edition.app" ] && brew cask install firefox-developer-edition

[ ! -e "/Applications/Android Studio.app" ] && brew cask install android-studio
