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
    

To delete files the rm (removing) command is used:

    $ rm -i fall
    rm: remove regular empty file 'fall'? y
    $
    $ ls -l fall
    ls: cannot access fall: No such file or directory
    $
    
The -i parameter prompts you to make sure that you’re serious
about removing the fi le. The shell has no recycle bin or trashcan. After you remove a fi le,
it’s gone forever. Therefore, a good habit is to always tack on the -i parameter to the rm
command.


To create a new directory we can just use the mkdir command:
    
    $ mkdir New_Dir
    $ ls -ld New_Dir
    drwxrwxr-x 2 michael michael 4096 May 22 09:48 New_Dir
    $

To delete a directory we use the rmdir comand however this will only delete a directory that is empty:

    $ touch New_Dir/my_file
    $ ls -li New_Dir/
    total 0
    294561 -rw-rw-r-- 1 christine christine 0 May 22 09:52 my_file
    $
    $ rmdir New_Dir
    rmdir: failed to remove 'New_Dir': Directory not empty
    $
    
To delete a directory and it's contents we use the rm command with the -r option which allows the command to descend into the
directory, remove the files, and then remove the directory itself:

    $ ls -l My_Dir
    total 0
    -rw-rw-r-- 1 michael michael 0 May 22 10:02 another_file
    $
    $ rm -ri My_Dir
    rm: descend into directory 'My_Dir'? y
    rm: remove regular empty file 'My_Dir/another_file'? y
    rm: remove directory 'My_Dir'? y
    $
    $ ls -l My_Dir
    ls: cannot access My_Dir: No such file or directory
    $

The file command is a handy little to have around. It can peak inside of a file and determine just what kind of file it is:
    
    $ file my_file
    my_file: ASCII text
    $
    
 To view the contents of a file the cat command can be used:
 
    $ cat test1
    hello
    This is a test file.
    That we'll use to test the cat command.
    $
    
For large files, the cat command can be somewhat annoying. The text in the fi le just
quickly scrolls off the display without stopping. Fortunately, we have a simple way to solve
this problem. To solve this there is the more and less command.


To view parts of a file we can use the tail command, which by default shows us the last 10 lines of the file:

    le’s last 10 lines:
    $ tail log_file
    line11
    Hello again - line 12
    line13
    line14
    line15
    Sweet - line16
    line17
    line18
    line19
    Last line - line20
    $
    
You can change the number of lines shown using tail by including the -n parameter. In
this example, only the last two lines of the fi le are displayed, by adding -n 2 to the tail
command:
    
    $ tail -n 2 log_file
    line19
    Last line - line20
    $
    
The head command does what you’d expect; it displays a fi le’s fi rst group of lines (the fi le’s
“head”). By default, it displays the fi rst 10 lines of text:
    
    $ head log_file
    line1
    line2
    line3
    line4
    line5
    Hello World - line 6
    line7
    line8
    line9
    line10
    $
    
## Setting up Cron Job's for Scheduling

To create or edit a crontab file run the following command:

    crontab -e

From here you can enter your new crontab as seen below.
Ensure environment path is included in order for cron environment to be same as user environment in order to leverae system level programmes. See the attached link for examples on how to set crontab for certain times [link](https://crontab.guru/examples.html) 
.
    
    PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

    0 * * * * /home/usr/example_script.sh
