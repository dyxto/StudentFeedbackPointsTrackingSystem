#!/bin/bash

# File to store feedback data
feedback_file="feedback_data.txt"

# Function to collect feedback points
collect_feedback() {
    student_name=$(dialog --inputbox "Enter student name to provide feedback:" 8 40)
    feedback_points=$(dialog --inputbox "Enter feedback points for student_name:" 8 40)

    # Save feedback to the file
    echo "$student_name, $feedback_points" >> "$feedback_file"
    dialog --msgbox "Feedback points recorded successfully." 8 40
}
collect_feedback