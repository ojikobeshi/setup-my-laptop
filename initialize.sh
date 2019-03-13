if [ ! -e /usr/local/bin/brew ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

[ ! -e "~/.bash_profile" ] && echo "source ~/.bash_alias" > ~/.bash_profile
ln -sfn `pwd`/.bash_alias ~/.bash_alias
source ~/.bash_alias

if [ ! -e "$WS_PATH" ]; then
    mkdir -p $WS_PATH
fi

GITHUB_DEFAULT_PATH=$WS_PATH/github-personal
mkdir -p $GITHUB_DEFAULT_PATH
cd $GITHUB_DEFAULT_PATH

git clone https://github.com/mbadolato/iTerm2-Color-Schemes.git
# # git clone https://github.com/ojikobeshi/setup-my-laptop.git


[ ! -e "/Applications/Google Chrome.app" ] && brew cask install google-chrome
[ ! -e "/Applications/iTerm.app" ] && brew cask install iterm2
[ ! -e `which code` ] && brew cask install visual-studio-code
