if status is-interactive
    # Commands to run in interactive sessions can go here
    neofetch
    if not set -q DISPLAY
        startx
    end
end
