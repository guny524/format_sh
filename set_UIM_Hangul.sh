#!/bin/bash
sudo apt update -y && sudo apt upgrade -y;
sudo apt install uim -y;
sudo apt install xterm -y;
if [ -f "$~/.config/autostart/sh.desktop" ];
then
    touch ~/.config/autostart/sh.desktop;
    echo "[Desktop Entry]\n
    Type=Application\n
    Exec=xterm -e \"xmodmap ~/.Xmodmap\"\n
    Hidden=false\n
    NoDisplay=false\n
    X-GNOME-Autostart-enabled=true\n
    Name[en_US]=UIM Hangul setting\n
    Name=UIM Hangul setting\n
    Comment[en_US]=R_Alt -> Hangul, R_Ctrl -> Hangul_Hanja\n
    Comment=R_Alt -> Hangul, R_Ctrl -> Hangul_Hanja"\
    > ~/.config/autostart/sh.desktop;
else
    echo "[Desktop Entry]\n
    Type=Application\n
    Exec=xterm -e \"xmodmap ~/.Xmodmap\"\n
    Hidden=false\n
    NoDisplay=false\n
    X-GNOME-Autostart-enabled=true\n
    Name[en_US]=UIM Hangul setting\n
    Name=UIM Hangul setting\n
    Comment[en_US]=R_Alt -> Hangul, R_Ctrl -> Hangul_Hanja\n
    Comment=R_Alt -> Hangul, R_Ctrl -> Hangul_Hanja"\
    >> ~/.config/autostart/sh.desktop;
fi
