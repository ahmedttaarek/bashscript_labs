#! /usr/bin/bash

#read -p "enter username: " uname
name='whoami'
echo $name
while true; do
       new_mail_count='mail -H -u $name  -N | wc -l'
       if [ "$new_mail_count" -gt 0 ]; then
            echo "You have $new_mail_count new mail(s)."
       else
            echo "No new mail"
       fi 

       sleep 10

       done
           
