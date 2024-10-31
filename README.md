# myCustomNeoVimInit
> Note: THIS VERSION OF NEOVIM CUSTOMIZATION IS BASED ON **`~/.config/nvim/init.vim`**, which is not based on `lazy.vim` which uses nvim.
My simple customized NeoVim configuration and installation guide for me in the future! So, I moved my configuration with `lazy.vim` --> https://github.com/KnightChaser/myCustomLazyVim

### PROCEDURES
1. Install `brew`(homebrew) if it's not installed on the system
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
2. Install `nvim`(NeoVim) via `homebrew`. (Visit https://brew.sh/ for more detail), and then, install nodejs(for CoC) and (neo)vim plug.
   
**IMPORTANT NOTE**: Using NVIM nightly is encouraged to support extensive range of NVIM extensions. Use `bob` NVIM version manager(https://github.com/MordechaiHadad/bob) instead for better usability.
```
# Install neovim
brew install neovim
export PATH="$HOME/home/linuxbrew/.linuxbrew/bin/nvim:$PATH"
source ~/.bashrc
echo $PATH

# Install nodejs
curl -sL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs    

# Install Plugin
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
3. Create a `nvim` configuration file at `/$HOME/.config/nvim/init.vim` (Copy `<REPOSITORY>/init.vim`'s full content)

![image](https://github.com/user-attachments/assets/b68876fc-505c-4f57-aa23-57f51cfbc3fb)

5. Install all plugins described in `init.vim`. Open `nvim` and hit the command `:PlugInstall`

![image](https://github.com/user-attachments/assets/d0921969-2ffe-491d-b483-30372bd897a5)

6. Exit nvim, and return to the `bash`. Install required packages.
(You may have to manually install nerd font family(which one you'd like to use) from the website(https://www.nerdfonts.com/) to apply it on your terminal.)
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

![image](https://github.com/user-attachments/assets/4b54929a-e7b4-4156-a235-d009180f7284)



### FURTHER NOTES
- For **CoC(automatic code completion/suggestion/IntelliSense)**, proper language packages should be installed. For example, C language, `clangd` (and `gcc` or other compilation tools) are required.

![image](https://github.com/user-attachments/assets/e3d0775a-d58b-4a75-96dd-e0add247727c)

- Visit NVIM copilot setup(https://github.com/github/copilot.vim) for AI coding assistance!
