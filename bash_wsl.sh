alias python="python3"

eval $(ssh-agent -s) > /dev/null
ssh-add ~/.ssh/github > /dev/null 2>&1

#shortcut to go repos
g() {
 if [[ -d "/mnt/c/Users/nino/go/src/github.com/Gabino3/$@" ]]; then
        command cd "/mnt/c/Users/nino/go/src/github.com/Gabino3/$@"
 else
        echo "no such dir"
 fi
}

#In /etc/bash_completion.d/g
_g()
{
    local cur=${COMP_WORDS[COMP_CWORD]}
    IFS=$'\n' tmp=( $(compgen -W "$(ls /mnt/c/Users/nino/go/src/github.com/Gabino3/ )" -- $cur))
    COMPREPLY=( "${tmp[@]// /\ }" )
}

complete -F _g g
