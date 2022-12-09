typeset -U path PATH

# Add directories to PATH
path=(~/.local/bin ~/go/bin $path)

# Default ZSH directory
export ZDOTDIR="$HOME/.config/zsh"

# Default GNU Pass directory
export PASSWORD_STORE_DIR="$HOME/.local/share/pass"

# Default wget config file
export WGETRC="$HOME/.config/wgetrc"

export JUPYTERLAB_DIR="$HOME/.local/share/jupyter/lab"
