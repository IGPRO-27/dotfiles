if [ -z "$TMUX" ]; then
    (tmux ls | grep attached | head -1 && tmux -2 at -t `tmux ls | grep attached | head -1 | cut -d: -f1`) || (tmux ls | grep -vq attached && tmux -2 at -t `tmux ls | grep -vm1 attached | cut -d: -f1`) || tmux -2 new
fi
