```markdown
# 🛠️ Liam's Zsh & Neovim Configuration

A clean, production-ready environment featuring Zsh, Oh My Zsh, Powerlevel10k theme, and syntax enhancement plugins.

---

## 🚀 Quick Start Installation

Follow these steps sequentially to set up the environment on a clean Linux machine (Ubuntu/Debian).

### 1. Install System Dependencies
Update your package manager and install the core terminal tools:
```bash
sudo apt update && sudo apt install -y zsh neovim git curl ripgrep

```

### 2. Install Oh My Zsh

Install the base framework before moving your custom configurations:

```bash
sh -c "$(curl -fsSL [https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh](https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh))"

```

### 3. Clone Custom Themes & Plugins

Run these commands to pull the necessary styling and autocompletion enhancements into your Oh My Zsh custom folder:

```bash
# Powerlevel10k Theme
git clone --depth=1 [https://github.com/romkatv/powerlevel10k.git](https://github.com/romkatv/powerlevel10k.git) ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Zsh Autosuggestions
git clone [https://github.com/zsh-users/zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions) ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Zsh Syntax Highlighting
git clone [https://github.com/zsh-users/zsh-syntax-highlighting.git](https://github.com/zsh-users/zsh-syntax-highlighting.git) ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

```

### 4. Deploy the Configuration

Clone this repository and replace your local `.zshrc` file with the custom one:

```bash
# Clone this repo
git clone [https://github.com/liamsei1/zsh-config.git](https://github.com/liamsei1/zsh-config.git)

# Move configuration file to home directory
cp zsh-config/zshrc ~/.zshrc

```

### 5. Initialize

Change your default system shell to Zsh and apply the changes:

```bash
# Set Zsh as default shell
chsh -s $(which zsh)

# Reload terminal environment
source ~/.zshrc

```

---

## 📦 Bundled Plugins & Themes

| Tool | Purpose |
| --- | --- |
| **Powerlevel10k** | High-performance, highly-customizable prompt theme. |
| **zsh-autosuggestions** | Fish-like fast command autocompletions based on history. |
| **zsh-syntax-highlighting** | Real-time command syntax validation directly in the shell terminal. |
| **ripgrep** | Blazing fast text searching tool required for Neovim's backend telescope utility. |

```

### 💡 What makes this version better:
* **Order of Execution:** Oh My Zsh is moved to step 2. This guarantees your custom configuration safely overrides the defaults without being deleted.
* **`cp` instead of `mv`:** I changed `mv zsh-config/zshrc` to `cp zsh-config/zshrc`. This ensures that your cloned `zsh-config` folder stays intact so you can pull future git updates without errors.
* **Scannability:** Added clear visual breaks, emojis, and a handy reference table at the bottom.

```
