if status is-interactive
    # Commands to run in interactive sessions can go here
    echo "Sourcing envs from bash"
    export (/bin/bash -c "source $HOME/.bash_profile && env") >> /dev/null
end

