
##Source the util ros sh files
source `rospack find aginika_ros_utils`/scripts/complitions/robot_complete.sh
source `rospack find aginika_ros_utils`/scripts/complitions/rosdep-complition.sh
source `rospack find aginika_ros_utils`/scripts/complitions/wstool-complition.sh

##alias or add commands
cv (){
   case "$1" in
   "fuerte" ) source /opt/ros/fuerte/setup.bash;source ~/ros/fuerte/setup.bash;;
   "groovy" ) source /opt/ros/groovy/setup.bash;source ~/ros/groovy/setup.bash;;
   "hydro"  ) source /opt/ros/hydro/setup.bash;source ~/ros/hydro/devel/setup.bash;;
   esac
}

_cv(){
    arg="${COMP_WORDS[COMP_CWORD]}"
    COMPREPLY=()
    COMPREPLY=($(compgen -W "fuerte groovy hydro" -- $arg))
}

complete -F _cv cv

alias rosc='cd ~/ros/hydro/src' ##ros src
alias rosh='cd ~/ros/hydro'     ##ros homespace

cmb (){
    pushd .;
    rosh;
    catkin_make $1;
    popd;
}

#roseus setting
alias roseus='rlwrap roseus'

#rosed setting
export EDITOR='emacs -nw'

