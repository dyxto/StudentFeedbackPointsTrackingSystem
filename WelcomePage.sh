#!/bin/bash

users=users.txt

while true; do
    dialog --msgbox "Welcome to the\nStudent Feedback System" 8 40
    clear

    source ./ValidateUser

    exit 0 
done