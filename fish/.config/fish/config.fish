if status is-interactive
    # I like vi key bindings
    fish_vi_key_bindings

    # Run a work config file if it exists
    test -e ~/.work_fish.config && source ~/.work_fish.config
end

# Created by `pipx` on 2024-10-08 00:31:15
set PATH $PATH /Users/shaun/.local/bin
