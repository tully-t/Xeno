# Xeno-gtk

Xeno-gtk is a dark, colorful GTK3 theme designed to complement the Xeno KDE theme. Xeno-gtk does not currently support GTK4 or desktop environments other than KDE.

![screenshot of Xeno-gtk theme](screenshots/image-1.png)

## Features:

- Dark mode
- Gradient accents
- Frameless
- Rounded corners
- CSD similar to Xeno Aurorae window decoration (as a graceful fallback when SSD are unavailable)
    - Close/Min/Max buttons grow when hovered, and glow when pressed
    - Active windows glow, inactive windows have inverted shadow (window edges are always apparent)

## Installation:

- Download and extract Xeno-main.zip
- Open the GTK folder
- Copy the Xeno-gtk folder to ~/.themes/ (create it if necessary)
- We now have a folder in ~/.themes/ named "Xeno-gtk" containing the theme content (gtk2.0, gtk3.0, index.theme)
- In System Settings -> Appearance -> Application Style -> Configure GNOME/GTK application style, select "Xeno-gtk" as your GTK theme, and click Apply

## Recommendations:

- Install [gtk3-nocsd](https://github.com/fredldotme/gtk3-nocsd) (available in Debian and Fedora repositories, but unfortunately not the AUR anymore) to disable client-side decoration for GTK3 apps in KDE on X11. If you are on KDE Wayland, after installing [gtk3-nocsd](https://github.com/fredldotme/gtk3-nocsd), use the environment variable `WAYLAND_DISPLAY= ` or `GDK_BACKEND=x11` to launch GTK apps using XWayland, and they will have server-side Aurorae window decoration
    - Unnecessary for Firefox or Inkscape
    - See [Xenofox](https://github.com/tully-t/Xenofox) documentation for complete instructions on the customization of Firefox
    - See [Xeno Aurorae](https://github.com/tully-t/Xeno/tree/main/Aurorae) documentation for complete instructions on the installation of window decorations

## Customization:

- Always make a backup! Feel free to experiment

- You are welcome to modify the theme files, including Xeno-gtk/gtk-3.0/gtk.css, as you wish. It may seem intimidating at first, but the bottom half (at least, anything after the stack-switcher section) of the file is app-specific code that generally should not require modification.

- Use Ctrl+Shift+I to inspect elements of a GTK app. Install `gtk3-demos` to use the `gtk3-widget-factory` theme preview app

- Xeno-gtk/gtk-3.0/gtk.css is delineated into sections that are ordered by similarity (with some exceptions due to the cascading nature of CSS). The order of major sections: base states, entries and spinbuttons, buttons, comboboxes, toolbars/headerbars/pathbars, treeviews, menus/popovers, notebooks, scrollbars, check/radio buttons, scales, progress bars, frames, lists, dialogs, sidebars, infobars, tooltips, window decorations, stack-switcher

- Use Ctrl+F to find specific lines of code that you want to change. For example, "radial gradient circle at top (#00ddff 0%, #8500ff 90%)" is the code for the gradient around toggled/selected elements. You could replace the above quote with "radial gradient circle at top (#FF0000 0%, #FF00FF 90%)" for a red-pink gradient instead of a blue-purple gradient
    - The same purple in the gradient is used as an accent color when a gradient is not available

- Changing an element's shape is more involved than changing its color. Padding, borders, and margins are all connected. Use the Mozilla CDN as a reference for CSS elements

- The `GTK NAMED COLORS` section at the very end provides the GTK 'color scheme.' Modify this section deliberately; it is very likely that the changes you are looking to make by modifying this section should be made further up in the actual CSS of the theme

### Known Issues:

- The window, tooltip, and menu shadows of Xeno-gtk, Xeno Aurorae, Xeno Kvantum, and Xeno Plasma are not exactly similar yet, but 1:1 similarity is a goal of the theme

- Inkscape scales (like Blur (%) and Opacity (%) on the Fill tab) have incorrect vertical margin

- Meld has sharp bottom window corners

### Unresolvable issues:

- Text entries and spinbuttons do not respond to mouse hover: [https://gitlab.gnome.org/GNOME/gtk/-/merge_requests/122]

- [gtk3-nocsd](https://github.com/fredldotme/gtk3-nocsd) prevents compositing for context menus and tooltips

### Contributing

Please open an issue if you notice any bugs, errors, or unexpected behavior.

### Authors

* **Tully Turk**

### License

This project is licensed under the GPL v3.0 License - see the [LICENSE.md](LICENSE.md) file for details.

### Acknowledgments

The Xeno-gtk theme is originally based on [Lavanda](https://github.com/vinceliuice/Lavanda-gtk-theme) by vinceliuice, with inspiration in the code from [Arc](https://github.com/horst3180/arc-theme) by horst3180, [Dracula](https://draculatheme.com/gtk) by denikris et al, and [Andromeda](https://github.com/EliverLara/Andromeda-gtk) by EliverLara
