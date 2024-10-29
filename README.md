# myNeoVimCustom
My simple customized NeoVim configuration and installation guide for me in the future!

### PROCEDURES
1. Install `brew`(homebrew) if it's not installed on the system
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
2. Install `nvim`(NeoVim) via `homebrew`. (Visit https://brew.sh/ for more detail)
```
brew install neovim
export PATH="$HOME/home/linuxbrew/.linuxbrew/bin/nvim:$PATH"
source ~/.bashrc
echo $PATH
```
3. Create a `nvim` configuration file at `/$HOME/.config/nvim/init.vim` (Copy `<REPOSITORY>/init.vim`'s full content)

![image](https://github.com/user-attachments/assets/b68876fc-505c-4f57-aa23-57f51cfbc3fb)

5. Install all plugins described in `init.vim`. Open `nvim` and hit the command `:PlugInstall`

![image](https://github.com/user-attachments/assets/d0921969-2ffe-491d-b483-30372bd897a5)

6. Exit nvim, and return to the `bash`. Install required packages.
```bash
# Install Nerdfont for barbar packages, including the tabline
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/JetBrainsMono.zip \
&& cd ~/.local/share/fonts \
&& unzip JetBrainsMono.zip \
&& rm JetBrainsMono.zip \
&& fc-cache -fv

# For telescope extension, install requirements
sudo brew install ripgrep
sudo apt-get install fd-find
```

7. ENJOY! (It'll work with WSL2 as well.)

![image](https://github.com/user-attachments/assets/b8957d27-1756-49da-8bad-ec639f98449b)

