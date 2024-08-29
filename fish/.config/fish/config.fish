if status is-interactive
   # Nothing
   test -e ~/.work_fish.config && source ~/.work_fish.config
end


alias assume="source (brew --prefix)/bin/assume.fish"
