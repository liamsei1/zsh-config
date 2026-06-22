# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ==========================================
# PATH CONFIGURATIONS
# ==========================================
# Start with your system default path, then append common dev environments
export PATH=$PATH:/usr/local/go/bin:$HOME/bin:$HOME/.local/bin

# Kubernetes configuration path
export KUBECONFIG=$HOME/.kube/config

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ==========================================
# OH-MY-ZSH SETTINGS
# ==========================================
ZSH_THEME="powerlevel10k/powerlevel10k"

# Custom plugin configurations (Ensure these are cloned via your README steps!)
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

# Load Oh My Zsh framework
source $ZSH/oh-my-zsh.sh

# ==========================================
# USER CONFIGURATIONS & ALIASES
# ==========================================
export EDITOR='nvim'

# Quick Aliases
alias c=claude
alias zshconfig="nvim ~/.zshrc"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Sourcing local environment profiles safely if they exist
[[ -f "$HOME/.local/bin/env" ]] && . "$HOME/.local/bin/env"

# Google Cloud SDK updates (Fixed shell script single-quote variables bug)
if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi
