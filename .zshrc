# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dungvo"
#ZSH_THEME_RANDOM_CANDIDATES=(
#      "robbyrussell"
#    "agnoster"
#)

plugins=(git zsh-autosuggestions)
source ~/.envs/envs_var.sh
source $ZSH/oh-my-zsh.sh
source ~/.aliases/alias.sh
source ~/.scripts/extract.sh
source ~/.scripts/push_condition_test.sh
source ~/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/zsh/zsh-completions/zsh-completions.plugin.zsh
source ~/.tokens/token.sh



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh



if [ -f "/opt/miniconda3/etc/profile.d/conda.sh"  ]; then
    . "/opt/miniconda3/etc/profile.d/conda.sh"
else
    export PATH="/opt/miniconda3/bin:$PATH"
fi

