if status is-interactive
    # Commands to run in interactive sessions can go here
    set PATH $PATH ~/.local/bin
    zoxide init fish | source
    alias erppy "source ~/erp/env/bin/activate.fish"
    nvm use 21
end