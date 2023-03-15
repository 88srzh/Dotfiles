if status is-interactive
    # Commands to run in interactive sessions can go here
    alias wg-up="sudo wg-quick up client"
    alias wg-down="sudo wg-quick down client"
#    alias gs="git status"
#    alias ga="git add ."
#    alias gp="git push"

    function pomodoro 
  echo $argv[1] | lolcat
  timer "$argv[2]"m 
#  spd-say "'$argv[1]' session done"
end

    alias po="pomodoro"
    alias wo="pomodoro work 45"
    alias br="pomodoro break 10"
end
