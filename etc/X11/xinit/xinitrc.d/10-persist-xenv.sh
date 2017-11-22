#! /bin/bash

# Persist x environment variables to file. 
# This script is necessary to interact with X programms from acpi events.

touch $HOME/.xenv
chmod 600 $HOME/.xenv
env | grep XDG_RUNTIME_DIR > $HOME/.xenv
echo "X$(env | grep USER)" >> $HOME/.xenv 

echo "export XDG_RUNTIME_DIR" >> $HOME/.xenv
echo "export XUSER" >> $HOME/.xenv 
