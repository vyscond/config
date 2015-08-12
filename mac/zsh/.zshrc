export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
export EDITOR="vim"
#export BROWSER="google-chrome-stable --alsa-output-device=equal"
#eval `dircolors -b`

autoload -U compinit promptinit
compinit
promptinit

##################################################################
# Stuff to make my life easier

# allow approximate
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# tab completion for PID :D
zstyle ':completion:*:*:kill:*' menu yes select
zstyle ':completion:*:kill:*' force-list always

# cd not select parent dir
zstyle ':completion:*:cd:*' ignore-parents parent pwd

##################################################################
# This will set the default prompt to the walters theme

prompt walters
zstyle ':completion:*' menu select
setopt completealiases
autoload -U colors && colors

##################################################################
# Prompt Editing

#PROMPT="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%1~ %{$reset_color%}%#"
PROMPT="$fg[white]%n@%m%#
%{$fg[white]%}> "

##################################################################
# Key Mapping

# based on default values and some additions on Yosemite 10.10.3
if [ `uname` '==' "Darwin" ]; then
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward
bindkey '^[[1;5A' beginning-of-line # control + up-arrow
bindkey '^[[1;5B' end-of-line # control + down-arrow
bindkey '\033[1;5D' backward-word # control + <-
bindkey '\033[1;5C' forward-word # control + ->
#bindkey '^[[1;5A' beginning-of-line # control + up-arrow
#bindkey '^[[1;5B' end-of-line # control + down-arrow
bindkey '\033b' backward-word # option + <-
bindkey '\033f' forward-word # option + ->
#bindkey '\033[1;2D' ... # shift + <-
#bindkey '\033[1;2C' ... # shift + ->
#bindkey '\033[1;2A' ... # shift + up-arrow
#bindkey '\033[1;2B' ... # shift + down-arrow
bindkey '^[[3~' delete-char # fn + delete
bindkey '^[[3;5~' delete-word # fn + control + delete
bindkey '^[[3;6~' backward-kill-word # control + delete
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

else

bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey "\e[5~" beginning-of-history # PageUp
bindkey "\e[6~" end-of-history # PageDown
bindkey "\e[2~" quoted-insert # Ins
bindkey "\e[3~" delete-char # Del
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[Z" reverse-menu-complete # Shift+Tab
# for rxvt
bindkey "\e[7~" beginning-of-line # Home
bindkey "\e[8~" end-of-line # End
# for non RH/Debian xterm, can't hurt for RH/Debian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward

fi

##################################################################
# My aliases

# Set up auto extension stuff
# Web
#alias -s html=$BROWSER
#alias -s org=$BROWSER
#alias -s com=$BROWSER
#alias -s net=$BROWSER

# - Media
# -------- Image
#alias -s png=viewnior
#alias -s jpg=viewnior
#alias -s gif=viewnior
# -------- Video
#alias -s avi=mplayer
#alias -s mp4=mplayer
#alias -s rmvb=mplayer
#alias -s mkv=mplayer
#alias -s wmv=mplayer
# -------- Audio
#alias -s mp3=mocp -l
#alias -s flac=mocp -l

# Uncompress
#alias -s gz='tar -xzvf'
#alias -s bz2='tar -xjvf'
#alias -s rar='unrar x'
#alias -s zip='unzip'
#alias -s sh='sh'

# Programming
alias -s java=$EDITOR
alias -s c=$EDITOR
alias -s py=$EDITOR
alias -s pl=$EDITOR
alias -s txt=$EDITOR
alias -s PKGBUILD=$EDITOR
alias -s php=$EDITOR

# Normal aliases
#alias webz=$BROWSER
#alias music=mocp
#alias dota2='steam -applaunch 570'
#alias battlenet='WINEARCH=win32 WINEPREFIX=~/win32 wine "C:\Program Files\Battle.net\Battle.net Launcher.exe" --nohttpaut'
#alias hearthstone='WINEARCH=win32 WINEPREFIX=~/win32 wine "C:\Program Files\Hearthstone\Hearthstone Beta Launcher.exe"'
#alias nvidia='optirun nvidia-settings -c :8'
#alias ls='ls --color=auto -Fsh'
#alias lsd='ls -ld *(-/DN)'
#alias lsa='ls -ld .*'
#alias f='find |grep'
alias c="clear"
alias ..='cd ..'
alias hist="grep '$1' /home/paul/.zsh_history"
#alias mem="free -m"
#alias smooth='su root -c "cpupower frequency-set -g powersave"'
#alias overpower='su root -c "cpupower frequency-set -g performance"'

#alias sudo='su root -c '"$*"
#alias dir='ls -1'
#alias gvim='gvim -geom 82x35'
#alias nicotine='/home/paul/downloads/nicotine-1.0.8rc1/nicotine'
#alias ppp-on='sudo /usr/sbin/ppp-on'
#alias ppp-off='sudo /usr/sbin/ppp-off'
#alias firestarter='sudo su -c firestarter'
#alias mpg123='mpg123 -o oss'
#alias mpg321='mpg123 -o oss'
#alias vba='/home/paul/downloads/VisualBoyAdvance -f 4'
#alias irssi="irssi -c irc.freenode.net -n yyz"
#alias msn="tmsnc -l hutchy@subdimension.com"
# command L equivalent to command |less
#alias -g L='|less' 
# command S equivalent to command &> /dev/null &
#alias -g S='&> /dev/null &'

export PATH="/usr/local/bin/ctags:$PATH"
POSTGRESQL=/Applications/Postgres.app/Contents/Versions/9.4/bin
ANDROID=/Users/vyscond/Tartarus/android-sdk-macosx/platform-tools
