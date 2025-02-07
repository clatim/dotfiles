# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh
. /home/linuxbrew/.linuxbrew/share/antigen/antigen.zsh

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

antigen use oh-my-zsh
antigen bundle git

antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle agkozak/zsh-z
# antigen bundle jeffreytse/zsh-vi-mode
antigen theme robbyrussell

antigen apply

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


export PATH=~/bin/:$PATH

# For tmuxinator
export EDITOR=nvim
alias mux=tmuxinator


# Linux brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

[ -f "/home/chipmonkcheeks/.ghcup/env" ] && source "/home/chipmonkcheeks/.ghcup/env" # ghcup-env
# export PYENV_ROOT="$HOME/.pyenv"
# command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"
# # Taken from https://stackoverflow.com/questions/51863225/pyenv-python-command-not-found
# alias python="$(pyenv which python)"
# alias pip="$(pyenv which pip)"

# For finding hdf5
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/hdf5/lib
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/home/chipmonkcheeks/codes/libraries/petsc_optimised_mpi/lib/pkgconfig

# Oh-my-posh
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/material.omp.json)"

# # Go stuff
# export PATH=$PATH:$(go env GOPATH)/bin

# fzf
source <(fzf --zsh)
## Do this to use fd instead of find for a bit of extra speed.
export FZF_DEFAULT_COMMAND="fd . $HOME"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME"
alias ll="eza --header --long --icons"
alias ls="eza --header --long --icons --grid"
# Broot
source /home/chipmonkcheeks/.config/broot/launcher/bash/br
export MODULAR_HOME="/home/chipmonkcheeks/.modular"
export PATH="/home/chipmonkcheeks/.modular/pkg/packages.modular.com_mojo/bin:$PATH"
# For java
export PATH="/usr/java/bin:$PATH"
