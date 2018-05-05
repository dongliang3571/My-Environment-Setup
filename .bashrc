# alias
# alias ls='ls -G' # to get color

# For mac only, linux has similar attribute configurations
export CLICOLOR=1 # use this attribute to get color for text in terminal instead of 'ls -G'
export LSCOLORS=Cxfxcxdxbxegedabagacad # man ls to see more details

# functions
cd() { builtin cd "$@" && ls; } # ls will be executed right after cd

# for iTerm to turn on timestamp
if [ $TERM_PROGRAM = "iTerm.app" ]; then
  osascript -e 'tell application "System Events" to keystroke ";" using {command down, option down}'
fi

echo '                                   '
echo '                                   '
echo ' _________________________________ '
echo '( A real programmer counts from 0 )'
echo ' --------------------------------- '
echo '        o   ^__^                   '
echo '         o  (oo)\_______           '
echo '            (__)\       )\/\       '
echo '                ||----w |          '
echo '                ||     ||          '
echo '                                   '
echo '                                   '
echo '                                   '
