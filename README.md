# My tmux configuration

This repository contains my personal tmux configuration file. It makes using tmux much more fun. This configuration does the following:

- Remaps the prefix key to `Ctrl+a` because it's easier to reach.
- Enables mouse support so that you can click to select panes and windows, resize panes, and scroll.
- You can reload the tmux configuration by pressing `Ctrl+a` then `r`.
- It changes the split commands to use `|` for vertical splits and `-` for horizontal splits. That is more intuitive than the default commands (`%` and `"`).
- You can use arrows to switch between panes easily. Hold `Alt` and press the arrow keys to move between panes.
- It starts the counter at 1 for windows and panes because reaching 0 is not as easy as reaching 1.
- It prevents renaming windows automatically, so your window names stay consistent.
- The status style and pane borders are customized.
- You can resize the panes using `Ctrl+a` then `Arrow keys`. You can tap the arrow key multiple times immediately after pressing the prefix to resize faster.
- For wayland users, the configuration copies the selected text to the clipboard using [wl-clipboard](https://github.com/bugaevc/wl-clipboard) when you select text with the mouse.

>[!NOTE]
>`wl-clipboard` is for wayland users only. If you are using X11, download and use [xclip](https://github.com/astrand/xclip) instead. You will need to modify the configuration file accordingly.

## Usage

Copy `tmux.conf` to your home directory as `.tmux.conf`:

```bash
cp tmux.conf ~/.tmux.conf
```

Reload your tmux configuration or restart tmux:

```bash
tmux source-file ~/.tmux.conf
```
