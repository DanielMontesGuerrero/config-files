if status is-interactive
    # Commands to run in interactive sessions can go here
end

neofetch
set fish_greeting

alias vim "nvim"
alias openICPC "cd ~/Documents/ICPC/"
alias openWorkspace "cd ~/Documents/Workspace/"
alias openSchool "cd ~/Documents/ESCOM/Semestre\ 8/"
alias configTablet "xsetwacom set \"GAOMON Gaomon Tablet Pad pad\" button 1 key Ctrl Z && xsetwacom set \"GAOMON Gaomon Tablet Pad pad\" button 2 key Alt tab"
alias focusTabletHDMI "xsetwacom set \"GAOMON Gaomon Tablet Pen stylus\" MapToOutput HDMI-A-0"

set --export PATH "$HOME/.local/bin:$PATH"
set --export ANDROID_HOME "$HOME/Android/Sdk"
set --export PATH "$ANDROID_HOME/emulator:$PATH"
set --export PATH "$ANDROID_HOME/tools:$PATH"
set --export PATH "$ANDROID_HOME/tools/bin:$PATH"
set --export PATH "$ANDROID_HOME/platform-tools:$PATH"
set --export PATH "/home/linuxbrew/.linuxbrew/bin:$PATH"
set --export MANPATH "/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
set --export INFOPATH "/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"
