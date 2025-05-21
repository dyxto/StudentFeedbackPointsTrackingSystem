#!/bin/bash

# File to store feedback data 
feedback_file="feedback_data.txt"

# Function to generate a report
generate_report() {
    student_name=$(dialog --inputbox "Enter student name to generate a report:" 8 40)

    # Retrieve feedback from the file
    feedback_record=$(grep -i "^$student_name" "$feedback_file")

    if [ -n "$feedback_record" ]; then
        feedback_points=$(echo "$feedback_record" | cut -d ',' -f 2)
        dialog --msgbox "Student Name: $student_name\nFeedback Points: $feedback_points" 8 40 
    else
        dialog --msgbox "Student not found." 8 40
    fi
}
generate_report