cookbooks=$(ls ~/git/chef-repo/cookbooks/)

    function _cdccomplete()
    {
        case $COMP_CWORD in
            1) COMPREPLY=($(compgen -W "c s" -- ${COMP_WORDS[COMP_CWORD]}));;
            2) COMPREPLY=($(compgen -W "$cookbooks" -- ${COMP_WORDS[COMP_CWORD]}));;
        esac
    }
    complete -F _cdccomplete cdc


cdc() {
    if [[ "$#" == "0" ]] ; then
        cd ~/git/chef-repo/
    elif [[ "$1" == "c" ]] ; then
        cd ~/git/chef-repo/cookbooks/${2}
    elif [[ "$1" == "s" ]] ; then
        cd ~/git/chef-repo/cookbook-src/${2}
    fi
}
