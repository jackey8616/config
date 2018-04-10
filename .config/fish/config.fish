if [ "$TERM" = "xterm" ]
  export TERM=xterm-256color
end 

alias tmux='tmux -2'  # for 256color
alias tmux='tmux -u'  # to get rid of unicode rendering problem


if  [ (tmux ls | grep -c "window") -eq 1 ]
	tmux a -d
else
	tmux
end
clear

command neofetch
