function _roscomplete_wstool {
    local arg opts
    COMPREPLY=()
    arg="${COMP_WORDS[COMP_CWORD]}"

    if [[ $COMP_CWORD == 1 ]]; then
        opts="help init set merge remove update info status diff"
        COMPREPLY=($(compgen -W "$opts" -- ${arg}))
    else
        case ${COMP_WORDS[1]} in
            help|init|set|info)
                ;;
            remove|update|diff|status)
                opts=`wstool info | cut -f 2 -d " " | awk "NR>4  {print}" | tr '\r' ' ' | tr '\n'  ' '`
                COMPREPLY=($(compgen -W "$opts" -G rosinstall -- ${arg}))
                ;;
            merge)
                opts=`ls -a| tr " " "\n" | grep -e ".rosinstall$" | tr "\n" " "`
                COMPREPLY=($(compgen -W "$opts" -G rosinstall -- ${arg}))
                ;;
            *)
                ;;
        esac
    fi
}

complete -F "_roscomplete_wstool" "wstool"
