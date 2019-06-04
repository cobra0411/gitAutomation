#!/bin/bash

function createproject(){
   cd 
   python create.py $1
   cd /home/user/Desktop/projects/$1
   git init
   git remote add origin https://username:password@github.com/username/$1.git
   touch README.md
   git add .
   git commit -m "first fresh code"
   git push -u origin master
   echo "Task Compeleted, your project is on github"
}
