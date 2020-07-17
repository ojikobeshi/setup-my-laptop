#!/bin/bash
# [ -e `which code` ] && code --install-extension DavidAnson.vscode-markdownlint
# [ -e `which code` ] && code --install-extension letmaik.git-tree-compare
# [ -e `which code` ] && code --install-extension eamodio.gitlens
# [ -e `which code` ] && code --install-extension hookyqr.beautify
# [ -e `which code` ] && code --install-extension marcostazi.vs-code-vagrantfile

# [ -e `which code` ] && code --install-extension octref.vetur
# [ -e `which code` ] && code --install-extension dbaeumer.vscode-eslint
# [ -e `which code` ] && code --install-extension cymonk.sql-formatter
# [ -e `which code` ] && code --install-extension arjun.swagger-viewer

# [ -e `which code` ] && code --install-extension wix.vscode-import-cost


# this may cause conflict with eslint (and vetur?)
# [ -e `which code` ] && code --install-extension esbenp.prettier-vscode

# for php stuff
# https://blog.pusher.com/vscode-extensions-laravel-development/
# https://laracasts.com/series/visual-studio-code-for-php-developers


# wix.vscode-import-cost
# patbenatar.advanced-new-file

# felixfbecker.php-pack    (for the 2 extensions below)
# felixfbecker.php-intellisense
# felixfbecker.php-debug

# [ -e `which code` ] && code --install-extension bmewburn.vscode-intelephense-client
# [ -e `which code` ] && code --install-extension christian-kohler.npm-intellisense

# ms-vsliveshare.vsliveshare
# marabesi.php-import-checker

while read extname
do
    if [[ $extname =~ ^# ]]
    then
        echo "Skip ${extname}.";
    else
        echo "Installing ${extname}..."
        [ -e `which code` ] && code --install-extension  $extname && echo "Done."
    fi
done < ./vscode-extension.list