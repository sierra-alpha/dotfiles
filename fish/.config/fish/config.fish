if status is-interactive
    # Setup my stuff
    if [ -e ~/.config/fish/functions/sa-fish-bootstrap.fish ]
        sa-fish-bootstrap
    end

    # I like vi key bindings
    fish_vi_key_bindings

    # Run a work config file if it exists
    test -e ~/.work_fish.config && source ~/.work_fish.config

    # Define a fish function to run hooks on prompt, should ideally be backgrounded and disowned.
    function fish_prompt_hooks
        if type work_prompt_hooks >/dev/null 2>&1
            work_prompt_hooks
        end
    end
end

fish_add_path ~/.local/bin

if test $TERM = "dumb"
    function fish_prompt
        echo "\$ "
    end
end

# Created by `pipx` on 2025-04-06 04:49:36
set PATH $PATH /home/shaun/.local/bin
