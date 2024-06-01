#> ~/.zshrc

#> NOTE: All comments starting with #> denote custom additions.
#> NOTE: Some functionality below requires ohmyzsh & starship, and may also require additional packages, like fzf or exa.
#> Some of them can be installed with the following commands:
#> sudo apt install nala
#> sudo nala install zsh curl aria2 fzf git exa bat tree ranger ncdu nvtop tmux parallel btop
#> sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
#> sudo sh -c "$(curl -fsSL https://starship.rs/install.sh)" # Or see: https://starship.rs/faq/#how-do-i-install-starship-without-sudo (Create the `bin` folder first).
#> git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
#> git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#> Custom paths
export PATH=${PATH}:~/system/
##> CUDA
export PATH=${PATH}:/usr/local/cuda/lib64/stubs:/usr/local/cuda/bin
export LD_LIBRARY_PATH=:/usr/local/cuda/lib64:/usr/lib/x86_64_linux-gnu/:/usr/local/cuda/lib64/stubs:/usr/local/cuda/include

# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"
export TIMEFMT=$'\nreal\t%*E\nuser\t%*U\nsys\t%*S'

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
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

#> See https://zsh.sourceforge.io/Doc/Release/Options.html
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
HISTSIZE=15000
SAVEHIST=10000
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    zsh-syntax-highlighting
	zsh-autosuggestions
    history-substring-search
    fzf
    sudo
    git
    npm
    python
    pip
    web-search
)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#> Aliases
##> zsh
alias NZ="nano ~/.zshrc"
alias ez="exec zsh" # Faster, but loses env vars
alias 2ez="source ~/.zshrc" # Slower, but keeps env vars

##> System commands
alias sct="sudo systemctl"
alias sctr="sct restart"
alias scs="sct stop"
alias ssd="sct daemon-reload"
alias scts="sct status"
alias snt="sudo nginx -t"
alias sus="sudo ufw status"
alias cls=clear
alias CLS=clear
alias lm="ls -alh --block-size=M"
alias l="exa -alFh"
alias cnt="ls -1 | wc -l"
alias dush="du -sh"

##> apt & nala
alias sauu="sudo apt update && sudo apt upgrade"
alias saa="sudo apt autoremove"
alias sai="sudo apt install"
alias snuu="sudo nala update && sudo nala upgrade"
alias sna="sudo nala autoremove"
alias sni="sudo nala install"

##> Utils
alias bpt="btop"
alias nvt="sudo nvtop"
alias ncd="sudo ncdu"
alias t="tmux -u"
alias tls="t ls"
alias tat="t a -t"
alias tns="t new -s"
alias aget="aria2c --file-allocation=none -c -x 10 -s 10"

###> Exiftool / Magick
alias ef="exiftool"
alias magick="~/system/magick"
alias qual="magick identify -verbose -format '%Q'"

##> Python + Django
alias pyl="python" # venv's python
alias py3="python3.11"
alias py3v="python3.11 -m venv"
alias pyp="python3.11 -m pip"
alias pypu="pyp install --upgrade pip"
alias pm="pyl manage.py"
alias pmrs="python manage.py runserver"
alias pmcs="python manage.py createsuperuser"
alias pmf="python manage.py flush"
alias pmk="python manage.py makemigrations"
alias pmm="python manage.py migrate"
alias pmc="python manage.py collectstatic"
alias pms="pyl manage.py shell"
alias redo2="pmk && pmm && pmc"

##> Conda
alias mc="/opt/miniconda3/bin/conda"

##> ML/DL
alias pyt="pyl train.py"
alias wgp="lshw -C display | grep GA"
alias wnv="watch -c -n 0.5  nvidia-smi"
alias wcat="watch -c -n 1 cat"
alias wlh="watch -c -n 0.5 exa -alFh"
alias wlm="watch -c -n 0.5 ls -l --block-size=MB"


#> Functions | NOTE: cd(), ng() & nf() are not mine, but I don't remember where I got them from.
##> Interactive cd
function cd() {
    if [[ "$#" != 0 ]]; then
        builtin cd "$@";
        return
    fi
    while true; do
        local lsd=$(echo ".." && ls -p | grep '/$' | sed 's;/$;;')
        local dir="$(printf '%s\n' "${lsd[@]}" |
            fzf --reverse --preview '
                __cd_nxt="$(echo {})";
                __cd_path="$(echo $(pwd)/${__cd_nxt} | sed "s;//;/;")";
                echo $__cd_path;
                echo;
                ls -p --color=always "${__cd_path}";
        ')"
        [[ ${#dir} != 0 ]] || return 0
        builtin cd "$dir" &> /dev/null
    done
}

##> Opens file by text
function ng() {
    local file
    local line

    read -r file line <<<"$(ag --nobreak --noheading $@ | fzf -0 -1 | awk -F: '{print $1, $2}')"

    if [[ -n $file ]]
    then
        nano $file +$line
    fi
}

##> Opens file by name
function nf() {
    local files
    IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
    [[ -n "$files" ]] && ${EDITOR:-nano} "${files[@]}"
}

##> Copies every nth file from a directory to another
function cpn {
    local n=$1
    local i=0
    local dir=$2
    local dest=$3
    for f in $dir/*; do
        if (( i % n == 0 )); then
            cp $f $dest
        fi
        (( i++ ))
    done
}

##> Lists history between two entries
function his() {
	history | sed -n "$1,$2p"
}

##> Activates virtualenv at given path
function vs0() {
        source $1/bin/activate
}

##> Creates virtualenv at given path, activates it & upgrades default packages
function vs() {
	py3 -m venv $1
	vs $1
	pip install --upgrade pip setuptools wheel
}

##> Runs python's http server - Might require venv
function pys {
	pyl -m http.server $1 --bind localhost
}


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

##> Poetry
fpath+=~/.zfunc
autoload -Uz compinit && compinit

# source $ZSH/oh-my-zsh.sh
eval "$(starship init zsh)"
