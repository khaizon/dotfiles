export PATH=/opt/homebrew/bin:$HOME/homebrew/bin:$PATH

export HOMEBREW_CASK_OPTS="--appdir=/Apps"


export PATH="$HOME/.docker/bin:$PATH"
export PATH="$HOME/Apps/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"


# Oh My Posh prompt ====
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/my-theme.json)"
# oh my posh ========

# Download Plugings Manager Znap, if it's not there yet.
[[ -r ~/Repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
source ~/Repos/znap/znap.zsh  # Start Znap

local -a plugins=(
    marlonrichert/zsh-autocomplete      # Real-time type-ahead completion
    marlonrichert/zsh-edit              # Better keyboard shortcuts
    marlonrichert/zcolors               # Colors for completions and Git
    zsh-users/zsh-autosuggestions       # Inline suggestions
    zsh-users/zsh-syntax-highlighting   # Command-line syntax highlighting
    mfaerevaag/wd # warp directory
)

znap clone $plugins

local p=
for p in $plugins; do
    znap source $p
done

# kubctl completions
source <(kubectl completion zsh)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export SDKMAN_DIR=$(brew --prefix sdkman-cli)/libexec
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"

alias cpbranch="git rev-parse --abbrev-ref HEAD | pbcopy"

