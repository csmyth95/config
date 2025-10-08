echo "Install brew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Install git"
brew install git

echo "Setup OhMyZsh for terminal"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Installing NodeJS 22"
# Download and install nvm:
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# in lieu of restarting the shell
\. "$HOME/.nvm/nvm.sh"
# Download and install Node.js:
nvm install 22
# Verify the Node.js version:
node -v # Should print "v22.20.0".
# Verify npm version:
npm -v # Should print "10.9.3".
echo "NodeJS22 Installed"

echo "Installing Claude Code"
npm install -g @anthropic-ai/claude-code

echo "Install Auto-completions"
brew install zsh-autosuggestions

echo "Copy custom zshrc file & source it"
cp zshrc/.zshrc ~/.zshrc
source ~/.zshrc

echo "FINISHED"
