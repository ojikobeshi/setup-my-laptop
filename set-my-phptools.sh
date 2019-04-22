# Error: The following directories are not writable by your user:
# /usr/local/lib/pkgconfig

# You should change the ownership of these directories to your user.
#   sudo chown -R $(whoami) /usr/local/lib/pkgconfig

# And make sure that your user has write permission.
#   chmod u+w /usr/local/lib/pkgconfig

[ ! -e "/usr/local/bin/composer" ] && brew install composer
[ ! -e "/usr/local/bin/php-cs-fixer" ] && brew install php-cs-fixer 
[ ! -e "/usr/local/bin/phpcs" ] && brew install codesniffer
[ ! -e "/usr/local/bin/phpmd" ] && brew install phpmd
[ ! -e "/usr/local/bin/phpstan" ] && brew install phpstan
