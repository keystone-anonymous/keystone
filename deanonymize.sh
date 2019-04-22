#!/bin/bash

echo "This script will print the location of the active Keystone repository, which contains information about the authors and LICENCE files."
read -p "Please type [y/N] to continue:" cmd
if [[ $cmd == "y" || $cmd == "Y" ]]; then
    echo "U2VlIGh0dHBzOi8vZ2l0aHViLmNvbS9rZXlzdG9uZS1lbmNsYXZlL2tleXN0b25lIGZvciB0aGUgY3VycmVudCB2ZXJzaW9uIGFuZCBsaWNlbmNlcwo=" | base64 -d

fi
