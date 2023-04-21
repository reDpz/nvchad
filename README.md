# NvChad config
This is a short guide detailing how to install nvchad + my config for both windows and linux, if you are on windows please scroll down to Windows

#### backup your previous files
```shell
mkdir -p ~/nvim/previous
rm -rf ~/nvim/previous/* # this will delete any previous backups, be aware of this
mv ~/.config/nvim ~/nvim/previous/nvim
mv ~/.local/share/nvim ~/nvim/previous/share
mv ~/.local/state/nvim ~/nvim/previous/state
mv ~/.cache/nvim ~/nvim/previous/cache
```
#### Download NvChad
```shell
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
```
#### Download this config
```shell
rm -rf ~/.config/nvim/lua/custom # clear folder in case it was autogenerated
git clone https://github.com/reDpz/NvChad ~/.config/nvim/lua/custom
```
#### Now you can start your nvim
```shell
nvim
```
Once started press `space` (default leader key) then `th` to enter the theme switcher, once there type in `gruvbox` to switch to my personal theme.


## Windows

*Note that some plugins and components may not function properly on windows, also I personally use git bash on windows and I'm not very familiar with powershell commands so therefore I won't be providing instructions for it. You can install git bash or mysys2 or cygwin by searching it up on google or with a package manager if you prefer.*

#### Install a C compiler (optional but required for Treesitter syntax highlighting)

##### Install scoop

If you don't have scoop (the package manager I personally use) then install it before proceeding

Instructions can be found on [scoop.sh](https://www.scoop.sh)

#### Install GCC

Simply run
```shell
scoop install gcc
```
If you dont have neovim installed either then I recommend using winget to install it 
```shell
winget install neovim
```
If you just prefer scoop then you can use it instead.

```shell
scoop install neovim
```

### Install nvchad

Run this
```shell
# Clean directories (not necessary if there is no previous installation)
mkdir -p ~/nvim/previous
mv ~/AppData/Local/nvim ~/nvim/previous
mv ~/AppData/Local/nvim-data ~/nvim/previous

# Download nvchad
git clone https://github.com/NvChad/NvChad ~/AppData/Local/nvim --depth 1

# Run initial setup by running nvim
nvim
# just wait for it to go through the setup process.
```
### Install my config

```
# Delete the custom folder generated by default (git wont clone to it otherwise)
rm -rf ~/AppData/Local/nvim/custom

# clone this repo
git clone https://github.com/reDpz/NvChad ~/AppData/Local/nvim/lua/custom

# start your nvim
nvim
```
Once in neovim press `space` (default leader key) then `th` to open the theme switcher and from there choose `gruvbox`.

# Getting markdown preview working
After installation you may want to get the markdown preview working there has been many reports that it doesn't install properly by default with lazy.

If this is the case for you then cd to the following directories for the respective platforms.

**Linux** 

`cd ~/.local/share/nvim/lazy/markdown-preview.nvim/app`

Then run the install script

`./install.sh`

**Windows** 

`cd ~/AppData/Local/nvim-data/lazy/markdown-preview.nvim/app/`

Then run the install script

`./install.cmd`

You also may have to set the browser path manually. To do this cd to `lua/custom` in the nvim folder then open `plugins.lua`.

Within this file search for `let g:mkdp_browser` then replace the path in the quotes with the path to your browser and uncomment the line by removing the `"` at the beginning of it.

So it should look something like this

`let g:mkdp_browser = '/usr/bin/firefox'`

# Thats it!

Have fun
