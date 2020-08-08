# st
A patch-friendly [st](https://st.suckless.org/) distribution. Lets make `suckless software for everybody`.



## Features

|                                                              |      | Patches                                                      |      |                                                              |      |
| ------------------------------------------------------------ | ---- | ------------------------------------------------------------ | ---- | ------------------------------------------------------------ | ---- |
| [alpha](https://st.suckless.org/patches/alpha/)              |      | [disable-bold-italic-fonts](https://st.suckless.org/patches/disable_bold_italic_fonts/) |      | [key-board-select](https://st.suckless.org/patches/keyboard_select/) |      |
| [alpha-focus-highlight](https://st.suckless.org/patches/alpha_focus_highlight/) |      | [dracula](https://st.suckless.org/patches/dracula/)          |      | [ligatures](https://st.suckless.org/patches/ligatures/)      |      |
| [anysize](https://st.suckless.org/patches/anysize/)          |      | [external-pipe](https://st.suckless.org/patches/externalpipe/) |      | [netwmicon](https://st.suckless.org/patches/netwmicon/)      |      |
| [blinking-cursor](https://st.suckless.org/patches/blinking_cursor/) |      | [external-pipe-signal](https://st.suckless.org/patches/externalpipe-signal/) |      | [new-term](https://st.suckless.org/patches/newterm/)         |      |
| [bold-is-not-bright](https://st.suckless.org/patches/bold-is-not-bright/) |      | [fix-ime](https://st.suckless.org/patches/fix_ime/)          |      | [nord-theme](https://st.suckless.org/patches/nordtheme/)     |      |
| [boxdraw](https://st.suckless.org/patches/boxdraw/)          |      | [fix-keyboard-input](https://st.suckless.org/patches/fix_keyboard_input/) |      | [open-copied-url](https://st.suckless.org/patches/open_copied_url/) |      |
| [clipboard](https://st.suckless.org/patches/clipboard/)      |      | [font-2](https://st.suckless.org/patches/font2/)             |      | [open-bsd](https://st.suckless.org/patches/openbsd/)         |      |
| [colors-at-launch](https://st.suckless.org/patches/colors_at_launch/) |      | [gruvbox](https://st.suckless.org/patches/gruvbox/)          |      | [osc-10-11-12](https://st.suckless.org/patches/osc_10_11_12/) |      |
| [copy-url](https://st.suckless.org/patches/copyurl/)         |      | [hide-cursor](https://st.suckless.org/patches/hidecursor/)   |      | [palettes](https://st.suckless.org/patches/palettes/)        |      |
| [delkey](https://st.suckless.org/patches/delkey/)            |      | [invert](https://st.suckless.org/patches/invert/)            |      | [relative-border](https://st.suckless.org/patches/relativeborder/) |      |
| [desktop-entry](https://st.suckless.org/patches/desktopentry/) |      | [iso14755](https://st.suckless.org/patches/iso14755/)        |      | [right-click-to-plumb](https://st.suckless.org/patches/right_click_to_plumb/) |      |
| [right-click-paste](https://st.suckless.org/patches/rightclickpaste/) |      | [scrollback](https://st.suckless.org/patches/scrollback/)    |      | [selection-bg-alpha](https://st.suckless.org/patches/selectionbg-alpha/) |      |
| [selection-colors](https://st.suckless.org/patches/selectioncolors/) |      | [solarized](https://st.suckless.org/patches/solarized/)      |      | [spoiler](https://st.suckless.org/patches/spoiler/)          |      |
| [swap-mouse](https://st.suckless.org/patches/swapmouse/)     |      | [sync](https://st.suckless.org/patches/sync/)                |      | [themed-cursor](https://st.suckless.org/patches/themed_cursor/) |      |
| [universcroll](https://st.suckless.org/patches/universcroll/) |      | [vertcenter](https://st.suckless.org/patches/vertcenter/)    |      | [vim-browse](https://st.suckless.org/patches/vim_browse/)    |      |
| [visual-bell](https://st.suckless.org/patches/visualbell/)   |      | [visual-bell-2](https://st.suckless.org/patches/visualbell2/) |      | [w3m](https://st.suckless.org/patches/w3m/)                  |      |
| [working-dir](https://st.suckless.org/patches/workingdir/)   |      | [xclearwin](https://st.suckless.org/patches/xclearwin/)      |      | [xresources](https://st.suckless.org/patches/xresources/)    |      |



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



## Patching

This distribution comes with [handle](https://github.com/jaimecgomezz/st/blob/master/handle), a utility that will take care of patches for you, just run:

```sh
# Usage: ./handle ACTION PATCH [OPTIONS]

# Installing patch A
./handle patch A

# Removing patch A
./handle depatch A
```

The rest of ACTIONS, PATCHES and OPTIONS currently available can be found running:

```sh
./handle
```



## Testing patches

For those willing to support the project, here’s a handy utility, [test-patch](https://github.com/jaimecgomezz/st/blob/master/test-patch) script. It will test the integration of a given patch with all the other patches listed under the `patches` folder. Whenever you need know if the patch you’ve been working on its ready, use it!

`````sh
# Usage: ./test-patch PATCH

# Testing the patch A
./test-patch A
...
A			Ok	# Means both patches can be used simultaneously
A			Failed!	# Means that the both patches have conflicts integrating together
...
`````

When the tests are finished, `test-patch` will report the results. If a patch “fails” you should:

- Make the older patch compatible with the new patch. Not on a functional level, but in a code level.
- Warn about the incompatibility of both patches in the `handle-usage` doc.

WARNING: This utility DO NOT test the patch functionality (if it does whats it’s suppose to do), it only makes you aware of any patch that might have troubles integrating with it.



## Notes

The proper documentation is a high priority, unfortunately, it requires a considerable amount of time. It will be delivered soon, of course, your contributions are encouraged!




## Contributing

You can read the `CONTRIBUTING` and make a `PR` whenever you’re ready, they are all welcomed:)



## License

 Code released under the MIT license.
