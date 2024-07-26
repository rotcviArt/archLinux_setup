#!/bin/bash 

git config --global user.email "victor.eduardo.comecial@gmail.com"
git config --global user.name "Victor Eduardo"

ssh-keygen -t ed25519 -C "victor.eduardo.comecial@gmail.com"

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

echo 
echo "=========== SHOW SSH KEY ==========="
echo
cat ~/.ssh/id_ed25519.pub
