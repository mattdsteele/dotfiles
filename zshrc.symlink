# load all config files ending in .zsh
DOTFILES=$HOME/dotfiles
for config ($DOTFILES/**/*.zsh) source $config

# load local customizations
LOCAL_CONFIG=~/.zshrc_local
if [[ -a $LOCAL_CONFIG ]]; then
  source $LOCAL_CONFIG
fi
