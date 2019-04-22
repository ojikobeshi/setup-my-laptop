[ -e `which code` ] && code --install-extension DavidAnson.vscode-markdownlint
[ -e `which code` ] && code --install-extension letmaik.git-tree-compare
[ -e `which code` ] && code --install-extension eamodio.gitlens
[ -e `which code` ] && code --install-extension hookyqr.beautify
[ -e `which code` ] && code --install-extension marcostazi.vs-code-vagrantfile

[ -e `which code` ] && code --install-extension octref.vetur
[ -e `which code` ] && code --install-extension dbaeumer.vscode-eslint

# this may cause conflict with eslint (and vetur?)
# [ -e `which code` ] && code --install-extension esbenp.prettier-vscode