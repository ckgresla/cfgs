# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/ckg-files/.oh-my-zsh"


# User Defined Paths
export PYTHONPATH=$SPARK_HOME/python:$SPARK_HOME/python/lib/py4j-0.10.8.1-src.zip
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin$PATH"
export PATH=$PATH:/usr/local/node/bin


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell" # set by `omz' -- CKG Changed the Theme in Place


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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
COMPLETION_WAITING_DOTS="true"

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


# Plug-Ins 
# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-syntax-highlighting)




# CKG Configs
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


# Example aliases -- Customs are Below 
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# User Defined Aliases & Commands
alias cd="cd"
#alias zsh="/bin/zsh"
#alias bash="/bin/bash"
alias rng="ranger"
alias colortest="msgcat --color=test"
alias EditZshrc="vim ~/.zshrc"
alias weather_chicago="curl wttr.in/Chicago"
alias NoSleep="conda activate pagui && python3 /Users/ckg-files/Desktop/Programming/Scripts/NoSleep.py" #for non-good VMs that sleep
alias ckg-clock="tty-clock -b -S -D -t -c -C 7"
alias nzxt_ip_address="echo 'ckg@192.168.1.27'"
alias z="ckg@192.168.1.27"
#alias InitiateTerminalActivationSequence="echo && archey && echo && echo && cal && echo && echo && print 'Terminal:'" #Old version, used archey instead of neofetch
alias InitiateTerminalActivationSequence="echo && neofetch && echo && echo && cal && echo && echo && print 'Terminal:'"


alias python="/Users/ckg-files/miniconda3/bin/python" #set default python to base miniconda 
alias py="python"
#alias pip="/Users/ckg-files/opt/anaconda3/bin/pip"

# Quick CDs & Opening Links - MacBook Pro
alias bb="open https://uic.blackboard.com/ultra/course"
alias UniDrive="open https://drive.google.com/drive/u/1/my-drive"
alias cfgs="ranger ~/.config" #open ranger in my ".config" folder
alias YT_Music="cd /Users/ckg-files/Music/YouTube-Music"
alias alexandria="cd ~/Desktop/Alexandria && ranger" #hopefully this one doesn't burn!
alias GreekLettersDict="screen zathura ~/Desktop/Alexandria/TheGreekAlphabet.pdf"


# Hide/Show Desktop Icons in Finder (Desktop screen on MacBook)
alias ShowDesktopFolders="chflags nohidden /Users/ckg-files/Desktop/Programming /Users/ckg-files/Desktop/Wizardry /Users/ckg-files/Desktop/Alexandria /Users/ckg-files/Desktop/Personal /Users/ckg-files/Desktop/UNI  "
alias HideDesktopFolders="chflags hidden /Users/ckg-files/Desktop/* "


# Below copies the content of a file and sends to clipboard on MacOS
#cat README-561.txt | pbcopy

# Command below displays system colors real nicely
#  msgcat --color=test

# Print out Just file names for all files in dir
#alias ll="ls -Al | tr -s ' ' | cut -f9- -d' '"


# Misc Commands -- Nice to Keep!
#find . -name "*.zip" | xargs -P 5 -I FILENAME sh -c 'unzip -o -d "$(dirname "FILENAME")" "FILENAME"'   #Unzips all files recursively from current dir down
#find . -depth -name '*.zip' -exec rm {} \;    #removes all .zip files recursively from dir down



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ckg-files/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ckg-files/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ckg-files/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ckg-files/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
export PATH="/usr/local/sbin:$PATH"




