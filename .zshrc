# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/jonas/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="agnoster"
ZSH_THEME="bullet-train"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
#
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
DEFAULT_USER=`whoami`

# Aliases
alias ls="ls -FG"
alias ll="ls -lh"
alias ftp_tsd="sftp p19-jonasmst@tsd-fx01.tsd.usit.no"
alias seetsv="column -s $'\t' -t"
alias seecsv="column -s ',' -t"
alias lesstsv="seetsv | less -S"
alias rm="echo Use 'trash' to delete stuff."
alias office="/Applications/Libreoffice.app/Contents/MacOS/soffice"
alias abel="ssh jonasmst@abel.uio.no"
alias findd="find . -depth 1"
alias config_vim="vim ~/.vimrc"
alias source_vim="source ~/.vimrc"
alias config_zsh="vim ~/.zshrc"
alias source_zsh="source ~/.zshrc"
alias config_slate="vim ~/.slate"
alias source_slate="source ~/.slate"
alias gs="git status"
alias gd="git diff"

# Color stuff
# If iTerm is not showing colors, uncheck Preferences -> Profiles -> Text -> "Draw bold text in bright colors" (under Text Rendering)
export CLICOLOR=1
export LSCOLORS=hxFxCxDxBxegedabagaced

# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/Users/jonas/software/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/jonas/software/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/Users/jonas/software/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/jonas/software/google-cloud-sdk/completion.zsh.inc'; fi

export PATH=/Users/jonas/.local/bin:$PATH

# Added to make .. autocomplete to ../
zstyle -e ':completion:*' special-dirs '[[ $PREFIX = (../)#(|.|..)  ]] && reply=(..)'

# GPG related stuff
#export RECAPTCHA_PRIVATE_KEY=6LcgD2UUAAAAADuGqvAQN9YxXFluVlGK0RQC5Q2w
#export FLASK_APP_SECRET_KEY=thisisourappsecret
#export DATABASE_URL=postgresql://jonas:pass_Jonas@localhost/guitar_god_db
#export DATABASE_URL=postgres://skccydlzuwtckf:1c80f57a86a6554d8d90c060da936f8067fad997db70f861b7e456b6c91399ff@ec2-54-217-235-166.eu-west-1.compute.amazonaws.com:5432/de8snclv0do02u
#export RECAPTCHA_PUBLIC_KEY=6LcgD2UUAAAAALLZZ5z6viGIP3LNFwNp0lHwbV_E
#export MAILGUN_API_KEY=c705c45fc000cccea527053a41dee024 

alias shrug='echo -n "¯\_(ツ)_/¯"'
alias weather="curl -s wttr.in/Oslo"
alias preview="open -a Preview.app"

# Open TSV file in pandas (in a python shell)
function pat() {
    python3 -i -c "import pandas as pd; import matplotlib.pyplot as plt; import seaborn as sns; df=pd.read_csv('$1', sep='\t'); print(df.head())"
}
# Open CSV file in pandas (in a python shell)
function pac() {
    python3 -i -c "import pandas as pd; df=pd.read_csv('$1', sep=','); print(df.head())"
}


source /Users/jonas/Library/Preferences/org.dystroy.broot/launcher/bash/br

