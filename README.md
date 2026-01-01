# My tmux configuration

This is my personal tmux configuration file. It makes tmux much more fun and easier to use than the default setup.

I built this configuration to fix a few things I found annoying in the standard tmux. For example, it changes the prefix to `Ctrl+a` (because it is closer to your fingers) and enables mouse support so you can just click things if you want to.

## What this config does

* **Better prefix:** I remapped the prefix to `Ctrl+a`. It is much easier to reach than `Ctrl+b`.
* **Mouse support:** You can click to select panes, resize windows, and scroll just like a normal terminal.
* **Intuitive splits:** I use `|` for vertical splits and `-` for horizontal splits. This makes way more sense than the default `%` and `"`.
* **Easy navigation:** You can hold `Alt` and use the arrow keys to jump between panes.
* **Sane counting:** Windows and panes start at 1 because reaching for the 0 key is too far.
* **Clipboard:** It automatically detects if you are using Wayland or X11 and sets up the clipboard copy correctly.

## Keybindings cheat sheet

Here is a quick list of the shortcuts I use most often:

| Keys | What it does |
| :--- | :--- |
| `Ctrl+a` | The new Prefix key |
| `Ctrl+a` then `r` | Reloads the config file instantly |
| `Ctrl+a` then <code>&#124;</code> | Splits the window vertically |
| `Ctrl+a` then `-` | Splits the window horizontally |
| `Alt` + `Arrows` | Switches between panes (no prefix needed) |
| `Ctrl+a` + `Arrows` | Resizes the pane (you can tap the arrow multiple times) |

## Quick install

The easiest way to install this is to use the included script. It will back up your old config and set up the clipboard for you automatically.

1. Clone the repository:

   ```bash
   git clone git@github.com:ImadSaddik/MyTmuxConfig.git
   cd MyTmuxConfig
    ```

2. Run the installer:

    ```bash
    chmod +x install.sh
    ./install.sh
    ```

## Manual install

If you prefer to do it manually, follow these steps:

1. Copy the config file:

    ```bash
    cp tmux.conf ~/.tmux.conf
    ```

2. Reload tmux:

    ```bash
    tmux source-file ~/.tmux.conf
    ```

3. **Check your clipboard:**

* If you use **Wayland**, install [wl-clipboard](https://github.com/bugaevc/wl-clipboard).
* If you use **X11**, install [xclip](https://github.com/astrand/xclip) and edit your `~/.tmux.conf`. Change the last line to replace `wl-copy` with `xclip -selection clipboard -i`.
