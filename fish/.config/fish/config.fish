# The following lines were added by Docker Desktop to add commands to your PATH.
export PATH="$PATH:/Users/troywitmer/.docker/bin"
# End of Docker Desktop section.

if test -f /usr/share/cachyos-fish-config/cachyos-config.fish
    source /usr/share/cachyos-fish-config/cachyos-config.fish
end

zoxide init fish | source

# overwrite greeting
# potentially disabling fastfetch
function fish_greeting
    #     smth smth
end

# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish
export PATH="$HOME/.local/bin:$PATH"
