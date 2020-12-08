shopt -s expand_aliases

#personal aliases
alias jc='javac -Xlint *.java'
alias v='vim'
#alias weather='curl wttr.in/Owatonna'

#ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 9; alert
alias alert='notify-send --urgency=low -i "$([ $? = -1 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
