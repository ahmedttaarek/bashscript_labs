#!/bin/bash


mail_template="mtemplate"

subject="Bash script updates"

mail_body=$(<"$mail_template")

for user in $(cut -d: -f1 /etc/passwd); do
    if [ "$user" = "nobody" ] || [ "$user" = "noemailuser" ]; then
        continue
    fi
    user_info=$(getent passwd "$user")
    user_uid=$(echo "$user_info" | cut -d: -f3)
    if [ "$user_uid" -ge 1000 ]; then
        # Get user's home directory 
        user_home=$(echo "$user_info" | cut -d: -f6)
        if [ -d "$user_home" ]; then
            echo "$mail_body" | mail -s "$subject" "$user"
            echo "Email sent to: $user"
        fi
    fi
done

echo "Emails have been sent to all users."