#!/bin/bash
shopt -s extglob

echo "Enter a character: "
read char

case "$char" in
[A-Z])
     echo "You entered an Upper Case letter.";;
[a-z])
     echo "You enetered a Lower Case letter.";;    
+([a-zA-Z]))
     echo "You entered a mixed characters.";;      
[0-9])
     echo "You entered a Number.";;
*)
     echo "You entered something else or nothing.";;     
esac     
