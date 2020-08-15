# st
A patch-friendly [st](https://st.suckless.org/) distribution. Lets make `suckless software for everybody`.



## Features

|                                                              |      | Patches                                                      |      |                                                              |      |
| ------------------------------------------------------------ | ---- | ------------------------------------------------------------ | ---- | ------------------------------------------------------------ | ---- |
| [alpha](https://st.suckless.org/patches/alpha/)              | ✔️    | [disable-bold-italic-fonts](https://st.suckless.org/patches/disable_bold_italic_fonts/) |      | [key-board-select](https://st.suckless.org/patches/keyboard_select/) |      |
| [alpha-focus-highlight](https://st.suckless.org/patches/alpha_focus_highlight/) | ✔️    | [dracula](https://st.suckless.org/patches/dracula/)          |      | [colors-at-launch](https://st.suckless.org/patches/colors_at_launch/) |      |
| [anysize](https://st.suckless.org/patches/anysize/)          | ✔️    | [external-pipe](https://st.suckless.org/patches/externalpipe/) |      | [netwmicon](https://st.suckless.org/patches/netwmicon/)      |      |
| [blinking-cursor](https://st.suckless.org/patches/blinking_cursor/) | ✔️    | [external-pipe-signal](https://st.suckless.org/patches/externalpipe-signal/) |      | [new-term](https://st.suckless.org/patches/newterm/)         |      |
| [bold-is-not-bright](https://st.suckless.org/patches/bold-is-not-bright/) | ✔️    | [fix-ime](https://st.suckless.org/patches/fix_ime/)          |      | [nord-theme](https://st.suckless.org/patches/nordtheme/)     |      |
| [iceberg-theme](https://notabug.org/vejetaryenvampir/st-iceberg) | ✔️    | [fix-keyboard-input](https://st.suckless.org/patches/fix_keyboard_input/) |      | [open-copied-url](https://st.suckless.org/patches/open_copied_url/) |      |
| [clipboard](https://st.suckless.org/patches/clipboard/)      | ✔️    | [font-2](https://st.suckless.org/patches/font2/)             |      | [open-bsd](https://st.suckless.org/patches/openbsd/)         |      |
| [ligatures](https://st.suckless.org/patches/ligatures/)      | ✔️    | [gruvbox](https://st.suckless.org/patches/gruvbox/)          |      | [osc-10-11-12](https://st.suckless.org/patches/osc_10_11_12/) |      |
| [copy-url](https://st.suckless.org/patches/copyurl/)         |      | [hide-cursor](https://st.suckless.org/patches/hidecursor/)   |      | [palettes](https://st.suckless.org/patches/palettes/)        |      |
| [delkey](https://st.suckless.org/patches/delkey/)            |      | [invert](https://st.suckless.org/patches/invert/)            |      | [relative-border](https://st.suckless.org/patches/relativeborder/) |      |
| [desktop-entry](https://st.suckless.org/patches/desktopentry/) |      | [iso14755](https://st.suckless.org/patches/iso14755/)        |      | [right-click-to-plumb](https://st.suckless.org/patches/right_click_to_plumb/) |      |
| [right-click-paste](https://st.suckless.org/patches/rightclickpaste/) |      | [scrollback](https://st.suckless.org/patches/scrollback/)    |      | [selection-bg-alpha](https://st.suckless.org/patches/selectionbg-alpha/) |      |
| [selection-colors](https://st.suckless.org/patches/selectioncolors/) |      | [solarized](https://st.suckless.org/patches/solarized/)      |      | [spoiler](https://st.suckless.org/patches/spoiler/)          |      |
| [swap-mouse](https://st.suckless.org/patches/swapmouse/)     |      | [sync](https://st.suckless.org/patches/sync/)                |      | [themed-cursor](https://st.suckless.org/patches/themed_cursor/) |      |
| [universcroll](https://st.suckless.org/patches/universcroll/) |      | [vertcenter](https://st.suckless.org/patches/vertcenter/)    |      | [vim-browse](https://st.suckless.org/patches/vim_browse/)    |      |
| [visual-bell](https://st.suckless.org/patches/visualbell/)   |      | [visual-bell-2](https://st.suckless.org/patches/visualbell2/) |      | [w3m](https://st.suckless.org/patches/w3m/)                  |      |
| [working-dir](https://st.suckless.org/patches/workingdir/)   |      | [xclearwin](https://st.suckless.org/patches/xclearwin/)      |      | [xresources](https://st.suckless.org/patches/xresources/)    |      |
| [boxdraw](https://st.suckless.org/patches/boxdraw/)          |      |                                                              |      |                                                              |      |



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

For the sake of stability across projects, the [handle](https://github.com/jaimecgomezz/suckless-patchers/blob/master/handle) (patching) and [test-patch](https://github.com/jaimecgomezz/suckless-patchers/blob/master/test-patch) (testing) utilities and its usage instructions can be found [here](https://github.com/jaimecgomezz/suckless-patchers). Believe me, they’re worth it!



## Notes

The proper documentation is a high priority, unfortunately, it requires a considerable amount of time. It will be delivered soon, of course, your contributions are encouraged!




## Contributing

You can read the `CONTRIBUTING` and make a `PR` whenever you’re ready, they are all welcomed:)



## License

 Code released under the MIT license.
