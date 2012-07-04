# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...


alias ll='ls -la'
alias mysql='/Applications/MAMP/Library/bin/mysql'
alias spec='rspec'
alias vi=vim
alias sr="screen -r"

[[ -s "/Users/matt/.rvm/scripts/rvm" ]] && source "/Users/matt/.rvm/scripts/rvm"  # This loads RVM into a shell session.

export JAVA_HOME=$(/usr/libexec/java_home)
export LANG=en_US.UTF-8
export MAIL_PASSWORD=vfyjvlmdfvqtgyxz
export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules
NODE_BINS=~/node_modules/.bin
PYRUS_PATH=/Users/matt/php
PHP_BIN_PATH=/Users/matt/php/bin
export PATH=$NODE_BINS:$NODE_PATH:/usr/local/sbin:/usr/local/bin:~/bin:$PYRUS_PATH:$PHP_BIN_PATH:$PATH

#export PATH=/Users/matt/node_modules/.bin:/usr/local/lib/node:/usr/local/sbin:/usr/local/bin:/opt/local/bin:/opt/local/sbin:/Users/matt/.rvm/gems/ruby-1.9.2-p0/bin:/Users/matt/.rvm/gems/ruby-1.9.2-p0@global/bin:/Users/matt/.rvm/rubies/ruby-1.9.2-p0/bin:/Users/matt/.rvm/bin:/Users/matt/opt/pear/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin

setopt auto_cd
cdpath=($HOME/code)

# Start an HTTP server from a directory, optionally specifying the port
function server() {
local port="${1:-8000}"
# Set the default Content-Type to `text/plain` instead of `application/octet-stream`
# And serve everything as UTF-8 (although not technically correct, this doesn’t break anything for binary files)
python -c $'import SimpleHTTPServer;\nmap = SimpleHTTPServer.SimpleHTTPRequestHandler.extensions_map;\nmap[""] = "text/plain";\nfor key, value in map.items():\n\tmap[key] = value + ";charset=UTF-8";\nSimpleHTTPServer.test();' "$port"
}

export TODO=~/Dropbox/todo
function todo() { if [ $# -eq 0 ]; then cat $TODO; else echo "> $@" >> $TODO ; fi }
function todone() { sed -i ".bak" -e "/$*/d" $TODO; }

