
export NVM_DIR="/Users/alexcummings/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
NPM_PACKAGES=/Users/alexcummings/.npm-packages
NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
PATH="$NPM_PACKAGES/bin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH=/Applications/mamp/bin/php/php5.6.2/bin:$HOME/.composer/vendor/bin:$PATH
export PYTHONPATH="$PYTHONPATH:$HOME/.python"


ctags=/usr/local/bin/ctags
alias config='/usr/bin/git --git-dir=/Users/gear/.cfg/ --work-tree=/Users/gear'
