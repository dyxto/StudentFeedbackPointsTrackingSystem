#!/bin/bash

# Main menu 
while true; do
    choice=$(dialog --menu "Feedback System Menu" 12 40 5 \
        1 "Collect Feedback" \
        2 "Generate Report" \
        3 "Student Progress" \
        4 "Exit" --stdout)
        case $choice in
            1)
                source ./CollectFeedback
                ;;
            2)
                source ./GenerateReport
                ;;
            3)
                source ./ViewProgress
                ;;
            4)
                dialog --infobox "Exiting Feedback System. Goodbye!" 10 40
                sleep 1 
                clear 
                exit 0
                ;;
            *)
                dialog --msgbox "Invalid choice. Try again." 10 40
                clear
                exit 0
                ;;
        esac
done
