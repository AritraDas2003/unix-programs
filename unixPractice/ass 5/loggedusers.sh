#!/bin/bash

who | cut -d" " -f1  # cut is a command to split a string -d is delimeter for space " " and -f is for field number which is 1 in this case

# if we used only who the output should be like this:
# user1   tty1         2024-06-01 10:00:00
# user2   tty2         2024-06-01 10:05:00
# but with cut -d" " -f1 the output will be:
# user1
# user2