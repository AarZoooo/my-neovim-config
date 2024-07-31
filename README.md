# My Personal NeoVim Configuration

This is my personal neovim folder with all configurations I made.

## Installation

### NeoVim

We need vanilla Neovim installed in our systems before applying our configurations on it.

#### Linux

Use your default package manager to install neovim. For example, in **Ubuntu** based distros:

```bash
sudo apt install neovim
```

Replace `apt` with your respective package manager.

#### Windows

You can install NeoVim in Windows using the installer from their website [(link)](https://neovim.io/).

Or you can use `winget` to install nvim through the command line. Open **Terminal** and type the following command:

```bash
winget install Neovim.Neovim
```

Neovim is now installed in your system.

<br>

### Applying Config

Now that we have NeoVim installed in our systems, we can apply our configs on it. Usually it is kept in `~/.config/nvim/` in **Linux** and `~/AppData/Local/nvim/` in **Windows**.

#### Linux

```bash
git clone https://github.com/AarZoooo/custom-neovim-config ~/.config/nvim/ && nvim
```

#### Windows (cmd)

```bash
git clone https://github.com/AarZoooo/custom-neovim-config ~/AppData/Local/nvim/ && nvim
```

#### Windows (pwsh)

```bash
git clone https://github.com/AarZoooo/custom-neovim-config $env:USERPROFILE\AppData\Local\nvim; nvim
```

Running this single command in your respective systems will clone the repository directly into a specific folder which will be read by NeoVim when it is launched. The command also opens NeoVim automatically so you don't need to worry about anything. When it completes loading the plugins, you can start using it. Happy Coding!


