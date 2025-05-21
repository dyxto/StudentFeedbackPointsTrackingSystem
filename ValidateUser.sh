#!/bin/bash

list="users.txt"

if grep $USER $list; then
    source ./MainMenu

    clear
else
    dialog --msgbox "$u\nYou are not an authorized user.\nGoodbye!" 10 40

    clear
    exit 0
fi