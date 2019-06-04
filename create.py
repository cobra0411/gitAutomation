import sys
import os
from github import Github

path='/home/cobra/Desktop/projects/'
username='cobra0411'
password='ascob1104'

def createRepo():
        os.makedirs(path+str(sys.argv[1]))
        user=Github(username,password).get_user()
        user.create_repo(sys.argv[1])
        print("sucessfully created repo !!")

createRepo()
