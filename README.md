# st

A patch-friendly [st](https://st.suckless.org/) distribution. Lets make `suckless software for everybody`.

## Important
As you might know, there have been some sever accusations [[1](https://chaos.social/@raichoo/101880564196043164), [2](https://twitter.com/pid_eins/status/1113738764797534208)] towards some `suckless` chairmans and their relation with some nazi stuff. To be honest, I can't completely verify this, but it really makes me prefer keeping the project on standby until the whole thing can be clarified. So... yeah, hope for the best.

[![ss-Sat-15-Aug20-21-54.png](https://i.postimg.cc/zfKKZKFs/ss-Sat-15-Aug20-21-54.png)](https://postimg.cc/GB3HvBNK)

## Features

|                                                              |      | Patches                                                      |      |                                                              |      |
| ------------------------------------------------------------ | ---- | ------------------------------------------------------------ | ---- | ------------------------------------------------------------ | ---- |
| [alpha](https://st.suckless.org/patches/alpha/)              | ✔️    | [disable-bold-italic-fonts](https://st.suckless.org/patches/disable_bold_italic_fonts/) | ✔️    | [nord-theme](https://st.suckless.org/patches/nordtheme/)     | ✔️    |
| [alpha-focus-highlight](https://st.suckless.org/patches/alpha_focus_highlight/) | ✔️    | [dracula-theme](https://st.suckless.org/patches/dracula/)    | ✔️    | [colors-at-launch](https://st.suckless.org/patches/colors_at_launch/) |      |
| [anysize](https://st.suckless.org/patches/anysize/)          | ✔️    | [external-pipe](https://st.suckless.org/patches/externalpipe/) | ✔️    | [netwmicon](https://st.suckless.org/patches/netwmicon/)      |      |
| [blinking-cursor](https://st.suckless.org/patches/blinking_cursor/) | ✔️    | [external-pipe-signal](https://st.suckless.org/patches/externalpipe-signal/) | ✔️    | [visual-bell-2](https://st.suckless.org/patches/visualbell2/) |      |
| [bold-is-not-bright](https://st.suckless.org/patches/bold-is-not-bright/) | ✔️    | [font-2](https://st.suckless.org/patches/font2/)             | ✔️    | [fix-keyboard-input](https://st.suckless.org/patches/fix_keyboard_input/) |      |
| [iceberg-theme](https://notabug.org/vejetaryenvampir/st-iceberg) | ✔️    | [vim-browse](https://st.suckless.org/patches/vim_browse/)    | ✔️    | [open-copied-url](https://st.suckless.org/patches/open_copied_url/) |      |
| [clipboard](https://st.suckless.org/patches/clipboard/)      | ✔️    | [relative-border](https://st.suckless.org/patches/relativeborder/) | ✔️    | [open-bsd](https://st.suckless.org/patches/openbsd/)         |      |
| [ligatures](https://st.suckless.org/patches/ligatures/)      | ✔️    | [gruvbox-theme](https://st.suckless.org/patches/gruvbox/)    | ✔️    | [osc-10-11-12](https://st.suckless.org/patches/osc_10_11_12/) |      |
| [copy-url](https://st.suckless.org/patches/copyurl/)         | ✔️    | [hide-cursor](https://st.suckless.org/patches/hidecursor/)   | ✔️    | [palettes](https://st.suckless.org/patches/palettes/)        |      |
| [delkey](https://st.suckless.org/patches/delkey/)            | ✔️    | [invert](https://st.suckless.org/patches/invert/)            | ✔️    | [fix-ime](https://st.suckless.org/patches/fix_ime/)          |      |
| [desktop-entry](https://st.suckless.org/patches/desktopentry/) | ✔️    | [iso14755](https://st.suckless.org/patches/iso14755/)        | ✔️    | [right-click-to-plumb](https://st.suckless.org/patches/right_click_to_plumb/) |      |
| [right-click-paste](https://st.suckless.org/patches/rightclickpaste/) | ✔️    | [solarized-theme](https://st.suckless.org/patches/solarized/) | ✔️    | [selection-bg-alpha](https://st.suckless.org/patches/selectionbg-alpha/) |      |
| [selection-colors](https://st.suckless.org/patches/selectioncolors/) | ✔️    | [no-bright-colors](https://st.suckless.org/patches/solarized/st-no_bold_colors-20170623-b331da5.diff) | ✔️    | [spoiler](https://st.suckless.org/patches/spoiler/)          |      |
| [swap-mouse](https://st.suckless.org/patches/swapmouse/)     | ✔️    | [xclearwin](https://st.suckless.org/patches/xclearwin/)      | ✔️    | [themed-cursor](https://st.suckless.org/patches/themed_cursor/) |      |
| [visual-bell](https://st.suckless.org/patches/visualbell/)   | ✔️    | [vertcenter](https://st.suckless.org/patches/vertcenter/)    | ✔️    | [universcroll](https://st.suckless.org/patches/universcroll/) |      |
| [working-dir](https://st.suckless.org/patches/workingdir/)   | ✔️    | [key-board-select](https://st.suckless.org/patches/keyboard_select/) | ✔️    | [w3m](https://st.suckless.org/patches/w3m/)                  |      |
| [new-term](https://st.suckless.org/patches/newterm/)         | ✔️    | [sync](https://st.suckless.org/patches/sync/)                | ✔️    | [boxdraw](https://st.suckless.org/patches/boxdraw/)          |      |
| [xresources](https://st.suckless.org/patches/xresources/)    | ✔️    | [scrollback](https://st.suckless.org/patches/scrollback/)    | ✔️    |                                                              |      |



## Installation

Currently there’s no package available, so a manual installation is needed.

### Requirements

[Xlib header files](https://tronche.com/gui/x/xlib/introduction/header.html), [make](https://www.gnu.org/software/make/), [patch](https://man7.org/linux/man-pages/man1/patch.1.html)

### Steps


1. Download the source code

   ```sh
   git clone https://github.com/jaimecgomezz/st.git && cd st
   ```

2. Use [make](https://www.gnu.org/software/make/) to install `st` on your system, it may be need to be executed with `sudo`

   ```sh
   sudo make clean install
   ```



## Patching and testing

For the sake of stability across projects, the [handle](https://github.com/jaimecgomezz/suckless-patchers/blob/master/handle) (patching) and [test-patch](https://github.com/jaimecgomezz/suckless-patchers/blob/master/test-patch) (testing) utilities and its usage instructions can be found [here](https://github.com/jaimecgomezz/suckless-patchers).



## Notes

The proper documentation is a high priority, unfortunately, it requires a considerable amount of time. It will be delivered soon, of course, your contributions are encouraged!




## Contributing

You can read the `CONTRIBUTING` and make a `PR` whenever you’re ready, they are all welcomed:)



## License

 Code released under the MIT license.
