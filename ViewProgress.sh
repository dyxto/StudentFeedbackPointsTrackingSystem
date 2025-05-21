#!/bin/bash

# File to store feedback data 
feedback_file="feedback_data.txt"

#instructor can input number of assignments 
assignment_count=10

view_progress(){
    student_name=$(dialog --inputbox "Enter student name to view progress:" 8 40)

    # Retrieve feedback from the file -> count number of Feedback
    feedback_count=$(grep -i "^$student_name" "$feedback_file" | wc -l)

    remaining_assignment=$(($assignment_count-$feedback_count))
    avg_score=$(grep -i "$student_name" "$feedback_file" | cut -d, -f2 | awk '{ sum += $2 } END { if (NR > 0) print sum / NR }' 8 40)
    
    dialog --msgbox "Student Name: student_name \nAverage Score: $avg_score" 8 40
}
view progress