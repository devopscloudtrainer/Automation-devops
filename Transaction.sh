===========================================================================================================================
Reset is used for moving the HEAD pointer to desired commit.
Using Reset, we can rewind our commit to any commit_id and start recording from that commit

1. Soft reset: This is very safest reset because it will move HEAD to previous stage, here we dont change anything in staging area and working directory.

 command: git reset --soft commit_id


[root@ip-172-31-14-178 aws-automation-repo]# git reset --soft 54f904e
[root@ip-172-31-14-178 aws-automation-repo]# git status
On branch testing-fix
Your branch is behind 'origin/main' by 3 commits, and can be fast-forwarded.
  (use "git pull" to update your local branch)

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   fetch-checkout.txt
        new file:   fetch-merge.txt
        new file:   pull-mechansim.txt

[root@ip-172-31-14-178 aws-automation-repo]# 
-----------------------------------------------------------------------------------------------------------------------
2. Mixed reset: Default reset option.
                This will remove changes from staging index and local repo and doesn't change anything in working area.

command: git reset --mixed commit_id
            (OR)
         git reset commit_id

[root@ip-172-31-14-178 aws-automation-repo]# git reset --mixed c71821e
Unstaged changes after reset:
M       Introduction.txt
D       jenkins-pipeline-notes.txt
[root@ip-172-31-14-178 aws-automation-repo]# git status
On branch testing-fix
Your branch is behind 'origin/main' by 6 commits, and can be fast-forwarded.
  (use "git pull" to update your local branch)

Changes not staged for commit:
  (use "git add/rm <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
        modified:   Introduction.txt
        deleted:    jenkins-pipeline-notes.txt

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        fetch-checkout.txt
        fetch-merge.txt
        new-sample.txt
