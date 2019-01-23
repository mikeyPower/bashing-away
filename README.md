# bashing-away
A repo of bash scripts 

## Basic Bash Shell Commands
To traverse a directory the cd (change directory) command is used:
    
    michael@server01:/usr/bin$ cd /var/log
    michael@server01:/var/log$
    michael:/var/log$ pwd
    /var/log
    michael@server01:/var/log$
    
Just entering cd and enter will bring you to the home directory
The pwd command displays the shell session’s current directory location, which is called the present working directory.

In order to the list a directory enter the ls (List command) command:
    
    $ ls
    Desktop Downloads Music Pictures Templates Videos
    Documents examples.desktop my_script Public test_file
    $
    
 Wilcard characters can be used along with other commands to match patterns with filters:
    
    ■ A question mark (?) to represent one character
    ■ An asterisk (*) to represent any number of characters
    
 For example:
 
    $ ls -l my_scr?pt
    -rw-rw-r-- 1 michael michael 0 May 21 13:25 my_scrapt
    -rwxrw-r-- 1 michael michael 54 May 21 11:26 my_script
    $
 
You can use more metacharacter wildcards for fi le globbing than
just the asterisk and question mark. You can also use brackets:

    $ ls -l my_scr[ai]pt
    -rw-rw-r-- 1 michael michael 0 May 21 13:25 my_scrapt
    -rwxrw-r-- 1 michael michael 54 May 21 11:26 my_script
    $
    
You can specify what should not be included in the pattern match by using the exclamation
point (!):

    $ ls -l f[!a]ll
    -rw-rw-r-- 1 michael michael 0 May 21 13:44 fell
    -rw-rw-r-- 1 michael michael 0 May 21 13:44 fill
    -rw-rw-r-- 1 michael michael 0 May 21 13:44 full
    $

To create a file you can use the touch command:

    $ touch test_one
    $ ls -l test_one
    -rw-rw-r-- 1 michael michael 0 May 21 14:17 test_one
    $
  
In order to copy a file the cp command uses two parameters — the source object and the
destination object: cp source destination.

    $ cp test_one test_two
    $ ls -l test_*
    -rw-rw-r-- 1 michael michael 0 May 21 14:35 test_one
    -rw-rw-r-- 1 michael michael 0 May 21 15:15 test_two
    $
    
    
 If you'd like to either move or rename files the mv command can be used:
 
    $ ls -li f?ll
    296730 -rw-rw-r-- 1 michael michaele 0 May 21 13:44 fall
    296717 -rw-rw-r-- 1 michael michael 0 May 21 13:44 fell
    294561 -rw-rw-r-- 1 michael michael 0 May 21 13:44 fill
    296742 -rw-rw-r-- 1 michael michael 0 May 21 13:44 full
    $
    $ mv fall fzll
    $
    $ ls -li f?ll
    296717 -rw-rw-r-- 1 michael michael 0 May 21 13:44 fell
    294561 -rw-rw-r-- 1 michael michael 0 May 21 13:44 fill
    296742 -rw-rw-r-- 1 michael michael 0 May 21 13:44 full
    296730 -rw-rw-r-- 1 michael michael 0 May 21 13:44 fzll
    $
    
You can also use mv to change a file’s location:

    $ ls -li /home/christine/fzll
    296730 -rw-rw-r-- 1 michael michael 0 May 21 13:44
    /home/christine/fzll
    $
    $ ls -li /home/michael/Pictures/
    total 0
    $ mv fzll Pictures/
    $
    $ ls -li /home/michael/Pictures/
    total 0
    296730 -rw-rw-r-- 1 michael michael 0 May 21 13:44 fzll
    $
    $ ls -li /home/christine/fzll
    ls: cannot access /home/michael/fzll: No such file or directory
    $
    


## Setting up Cron Job's for Scheduling

To create or edit a crontab file run the following command:

    crontab -e

From here you can enter your new crontab as seen below.
Ensure environment path is included in order for cron environment to be same as user environment in order to leverae system level programmes. See the attached link for examples on how to set crontab for certain times [link](https://crontab.guru/examples.html) 
.
    
    PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

    0 * * * * /home/usr/example_script.sh
