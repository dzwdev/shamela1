#!/bin/bash
winetricks vb6run
unset WINEPREFIX
if [ ! -d "$HOME"/.shamela ] ; then
   mkdir -p "$HOME"/.shamela
   #prepare the environment here
   ln -s /usr/share/shamela/app "$HOME"/.shamela/app
   ln -s /usr/share/shamela/launcher.exe "$HOME"/.shamela/launcher.exe
   cp -r /usr/share/shamela/database "$HOME"/.shamela/database
   fi
WINEDEBUG=-all wine "$HOME"/.shamela/launcher.exe "$@"
