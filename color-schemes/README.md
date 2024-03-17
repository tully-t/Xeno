# Xeno Color Scheme

A color scheme for KDE to compliment the Xeno Kvantum theme

![screenshot of Xeno color scheme](screenshots/screenshot_1.png)

## Installation

- Download and extract Xeno-main.zip
- Open the color-schemes folder
- Copy Xeno.colors to ~/.local/share/color-schemes
- In System Settings -> Appearance -> Colors, select Xeno and click Apply (lower right)

or

- Use the "Install from File..." dialog at System Settings -> Appearance -> Colors, and then Apply

## Notes:

When using a Kvantum theme, colors in QT apps are provided by the Kvantum theme (both in the .svg image and the 'General Colors' section of the .kvconfig file). As a result, the KDE color scheme appears only where the Kvantum theme doesn't. Among other peculiarities, it fully colors QtQuick/Kirigami apps (like System Settings, System Monitor, and Elisa), and it colors the text in apps like KCalc and in window titlebars.

## Customization

- Always make a backup first

- Feel free to experiment!

- Use a text editor rather than the System Settings dialog to edit Xeno.colors. The color picker dialog only allows for opaque colors, but editing Xeno.colors directly as a text file makes it possible to add a fourth number, the aplha value (RGB -> RGBA)

    For example, [DecorationFocus=170,170,172] will give a solidly opaque #aaaaac white. [DecorationFocus=170,170,172,86] will give a transparent #aaaaac56 white, the same color but at 33.7% opacity.

- The specific combination of an opaque Window BackgroundNormal and a transparent View BackgroundNormal allows for QtQuick/Kirigami apps to stay as consistent as possible to QtWidget/QtQML/Kvantum apps with a blurred window background without introducing transparency in unexpected places

- It is unfortunate that the 'separator' color for QtQuick/Kirigami apps is sourced from the text color Window ForegroundNormal. The consequence of this condition is that in QtQuick/Kirigami apps, separators and text have equal visibility and contrast - for example, System Settings cannot have both visible text and invisible separators

-  App colors are determined from several sources. You may be better served by making modifications to your Kvantum theme first, and then carrying your changes over to your KDE color scheme, since the KDE color scheme is essentially subordinate to the Kvantum theme. It is my recommendation to modify Kvantum theme colors first, and then carry your changes over to your KDE color scheme and then your Plasma theme, in order to match things up smoothly. If you use the Xeno-gtk GTK theme, carry your changes over to that theme component to stay consistent. If you use the Xenofox Firefox theme, carry your changes over to that theme component also

## Contributing

Please open an issue if you notice any bugs, errors, or unexpected behavior.

## License

This project is licensed under the GPLv3
