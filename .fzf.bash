# Setup fzf
# ---------
if [[ ! "$PATH" == */home/sdarayan/shayanco/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/sdarayan/shayanco/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/sdarayan/shayanco/fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/sdarayan/shayanco/fzf/shell/key-bindings.bash"
