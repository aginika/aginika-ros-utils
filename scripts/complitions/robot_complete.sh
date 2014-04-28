robot_comp()
{
    arg="${COMP_WORDS[COMP_CWORD]}"
    COMPREPLY=()
    opts=`ls | grep vcg`
#    echo "* claim    Claim control of the robot"
#    echo "* help     Display this message"
#    echo "* plist    Show all processes running on the robot."
#    echo "* release  Release control of the robot"
#    echo "* start    Start the robot (runs stop first if necessary)"
#    echo "* stop     Stop all processes running on the robot and release control"
#    echo "* users    Show all users on the robot."

    COMPREPLY=($(compgen -W "claim help plist release start stop users love" -- $arg))


}

complete -F robot_comp robot