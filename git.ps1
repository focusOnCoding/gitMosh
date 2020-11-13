# the first thing i want to do before i start a project is 
git init

# the add all the files i want git to watch
git commit -m " snap shoot" # or
git commit

# git status less infor
git status -s

# write hello to file1.txt
echo hello > file1.txt

# appen text to file
echo world >> file1.txt

# skip staging arear
# commit without staging 
git commit -am "comming and staging at the same time"

# see files in staging arear
git ls-files

# delete a file in both {staging and localy}
git rm file2.txt *.txt

# rename file1.txt to main.js
mv file1.txt main.js # now because file1 will be deleted i must add both files with git add

# git ignor i dont want people to see this
# create log file then write to it
mkdir logs
echo hello > logs/dev.log
# then send to gitignore so this wont get uploaded
echo logs/ > .gitignore 

# create a gitignore file from commited code
# by only rm the file only in the staging area
git rm -h # to see option
# in this case this is want i need
git rm --cached -r bin/
# check to see if file was removed from staging area
git ls-files

# see the lines of code that i have staged
# whats going in the next commit
 git diff --staged
 # see all changes that a not staged in the workig dir
 git diff
 

 # compare files using vscode
 git config --global diff.tool vscode # setting diff.tool = vscode

 # how to lotch vscode
 git config --global difftool.vscode.cmd "code --wait --diff $LOCAL $REMOTE"

# go to config settings
git config --global -e

# lonch vissial difftool
git difftool # --staged to see stage changes

# get less infor in log
git log --oneline

# show commit content
git show d60 # or git show HEAD~1

# see the final verssion that has been stored in the commit
# see the verssion i have for the gitignore file
git show HEAD~1:.gitignore

# see all files stored in a commit
git ls-tree HEAD~1 # mmm

# unstage
git restore --staged fileNameGoesHere

# Discarding local changes
git restore . # discard all local changes

# restore file that i have deleted
git restore --source=HEAD~1 file1.js