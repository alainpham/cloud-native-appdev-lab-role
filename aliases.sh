function deploy { ansible-playbook playbooks/cmd.yml --extra-vars "global_recreate=true global_appstate=started global_purge=false theapp=$1" ; }

export -f deploy

function undeploy { ansible-playbook playbooks/cmd.yml --extra-vars "global_recreate=true global_appstate=absent global_purge=false theapp=$1" ; }

export -f undeploy

function destroy { ansible-playbook playbooks/cmd.yml --extra-vars "global_recreate=true global_appstate=absent global_purge=true theapp=$1" ; }

export -f destroy

function rewind { 
    destroy $1;
    deploy $1; 
    }

export -f rewind