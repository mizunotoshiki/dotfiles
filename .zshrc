export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh
eval "$(/opt/homebrew/bin/brew shellenv)"
export PATH="$PATH:$HOME/ai_box/flutter_projects/flutter/bin"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"
export PATH="$HOME/.gem/bin:$PATH"
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_HOME/emulator:$ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH
export PATH="$HOME/.local/bin:$PATH"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
