#1.5 Tracking Changes Reflection

##How does tracking and adding changes make developers' lives easier?

Doing so allows teams to work on multiple projects and features at the same time from many locations while maintaining a history of all committed changes. This also allows teams to easily revert to previous versions of features or projects.

##What is a commit?

A snapshot of changes up to that moment. It's like "saving" your work.

##What are the best practices for commit messages?

Use imperative, present tense.
Add a description in the first line up to 50 characters.
Leave an empty line and then provide a more detailed explanation of the changes purpose and how behavior of the program or file changes as a result.

##What does the HEAD^ argument mean?

This is the commit just before the commit you just made. If you want to move even further back in commits, you can use HEAD~3, HEAD~4, and so on.

##What are the 3 stages of a git change and how do you move a file from one stage to the other?

**modified** = A vesion of a file that has been changed but not staged.

**staged** = all modifications that have been added to the staging area.

**committed** = all staged modifications that have been committed.

Add files that have been modified to the staging area:

> git add [filename]

Commit modified files:

> git commmit -v *or* git commit -m "*description of change*"

Bring a committed file back to staging:

> git reset --soft HEAD^


##Write a handy cheatsheet of the commands you need to commit your changes?

**Check status of changes**

> git status

**Make and move to a new feature-branch**

> git checkout -b *branch-name*

**Add files that have been modified to the staging area:**

> git add *filename*

**Commit modified files:**

> git commmit -v *or* git commit -m "*description of change*"

**Bring a committed file back to staging:**

> git reset --soft HEAD^

**Delete a branch**

> git branch -d *branch-name*

**Push commits to remote branch of same name (*branch-name*).origin is the cloned repository (in this case, phase-0-unit-1. branch-name is the local branch**

> git push origin *or* git push origin *branch-name*

**Fetch and merge the remote branch into the local one**

> git pull origin

**Fetch any changes from the remote repo to my machine. NOTE: This WILL NOT automatically merge changes with my branch.**

> git fetch origin

> git checkout -b *working-branch* origin/*working-branch*

> git merge master

**Merge changes and update on GitHub**

> git checkout master

> git merge --no-ff *working-branch*

> git push origin master


##What is a pull request and how do you create and merge one?

A pull request is a process used to notify a team or person that a feature is ready to be reviewed and merged into the upstream branch.

Let's suppose you and I are working on a project which is stored remotely, say, on GitHub. I have cloned that repository to my computer and I have made a few changes locally. I have staged and committed those changes. I am now ready for my commits to be merged into the remote project.

First, I will push my changes to my public repository using the command:

> git push origin *branch-name*

Then I will go to my repository in GitHub. I will see some text, *branch-name*, and a green button, *Compare & pull request*, in a box highlighted in yellow. I click the green button.

I am now on a new page with a header "Open a pull request." On this page, I want to make sure that my **base: master** branch is selected in the left menu, and that my **working branch** (whatever I named it) is selected on the right menu. Basically, I will pull the branch in the right menu into the branch on the left menu. Before I click the "Create pull request" button at the bottom of the screen, I may want to udpdate the description of the request.

After I click "Create pull requst", it's best practice for **you** to then merge the versions by clicking the green "Merge pull request" button. You will then have to click the green "Confirm merge" button. The pull request and merge should now be complete.

##Why are pull requests preferred when working with teams?

Pull requests are preferred because they invite at least a second person to review a developer's code. When someone else receives the pull request, they act as a second pair of eyes--reviewing the feature, ensuring it's appropriate to the master branch, and potentially providing feedback to the developer who made the request. Furthermore, an entire team can provide feedback on the feature via the pull request, providing a coherent history of the feature's evolution.
