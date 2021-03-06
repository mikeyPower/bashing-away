# bashing-away
A repo of bash scripts 


## Table of Contents

## Change Directory
To traverse a directory the cd (change directory) command is used:
    
    michael@server01:/usr/bin$ cd /var/log
    michael@server01:/var/log$
    michael:/var/log$ pwd
    /var/log
    michael@server01:/var/log$
    
Just entering cd and enter will bring you to the home directory
The pwd command displays the shell session’s current directory location, which is called the present working directory.

Now to go back one directory we can enter cd .. or cd - as shown below.

	michael@server01:/var/log$ cd -
	michael@server01:/var$

## List Directory
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

## Create a file
To create a file you can use the touch command:

    $ touch test_one
    $ ls -l test_one
    -rw-rw-r-- 1 michael michael 0 May 21 14:17 test_one
    $
 
## Copy a file
In order to copy a file the cp command uses two parameters — the source object and the
destination object: cp source destination.

    $ cp test_one test_two
    $ ls -l test_*
    -rw-rw-r-- 1 michael michael 0 May 21 14:35 test_one
    -rw-rw-r-- 1 michael michael 0 May 21 15:15 test_two
    $
    
 ## Move or Rename files   
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
    
## Delete a file
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

## Create a new folder
To create a new directory we can just use the mkdir command:
    
    $ mkdir New_Dir
    $ ls -ld New_Dir
    drwxrwxr-x 2 michael michael 4096 May 22 09:48 New_Dir
    $

## Delete a folder
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

## Describe a file
The file command is a handy little to have around. It can peak inside of a file and determine just what kind of file it is:
    
    $ file my_file
    my_file: ASCII text
    $
    
 ## View contents of file
 To view the contents of a file the cat command can be used:
 
    $ cat test1
    hello
    This is a test file.
    That we'll use to test the cat command.
    $
    
For large files, the cat command can be somewhat annoying. The text in the fi le just
quickly scrolls off the display without stopping. Fortunately, we have a simple way to solve
this problem. To solve this there is the more and less command.

## View end of file
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
    
## View start of file
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

## Locate a file
To find a file on your system we can use the locate. In this example, we are going to display all the locations that the file "cv.pdf" is present. The -i will perform a case insensitive search:

    $ locate -i cv.pdf
    /home/michael/Desktop/cv.pdf
    /home/michael/Desktop/cv.pdf.docx
    /home/michael/Desktop/desk/cv.pdf
    /home/michael/Documents/CV.pdf
    /home/michael/Documents/cv.pdf
    /home/michael/Downloads/cv.pdf.docx
    $
    
## Clear Terminal
After executing all these commands are terminal can look very busy and hectic, this is way the clear command comes in handle. It simple takes us back to the start of the command prompt removing everyhing that was previously on the terminal.
    
    $ clear
 
## Download a file from sites 
Now if you are looking at downloading files straight from sites to your system look no further than the wget command.

    $ wget www.mickpowers.com
    --2019-10-14 20:57:31--  http://www.mickpowers.com/
    Resolving www.mickpowers.com (www.mickpowers.com)... 35.173.69.207
    Connecting to www.mickpowers.com (www.mickpowers.com)|35.173.69.207|:80... conne
    HTTP request sent, awaiting response... 302 Moved Temporarily
    Location: https://www.mickpowers.com/ [following]
    --2019-10-14 20:57:31--  https://www.mickpowers.com/
    Connecting to www.mickpowers.com (www.mickpowers.com)|35.173.69.207|:443... conn
    HTTP request sent, awaiting response... 200 OK
    Length: 21479 (21K) [text/html]
    Saving to: ‘index.html’

    index.html                                                                   100

    2019-10-14 20:57:32 (4.75 MB/s) - ‘index.html’ saved [21479/21479]
    $
    
## Setting up Cron Job's for Scheduling

To create or edit a crontab file run the following command:

    crontab -e

From here you can enter your new crontab as seen below.
Ensure environment path is included in order for cron environment to be same as user environment in order to leverae system level programmes. See the attached link for examples on how to set crontab for certain times [link](https://crontab.guru/examples.html) 
.
    
    PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

    0 * * * * /home/usr/example_script.sh
    
    
## File details in readable form

Now if we want to get some information such as the size of the file we can execute the following command.

    ls -lh <file>
    
Which will output the following for example to stdout, giving us size, modified date and time, file or folder name and owner of file and its permission.

    -rw------- 1 root root 1.1M Apr  4 14:50 <file>
    
This is good enough for a quick and easy way to get last modified time of the file along with it's size but say we wanted to get the creation time of the file. In order to accomplish that we first need to get the index number of the file.

    $ ls -i file
    25035952 file
    
Now we have the index number of the file we meed to know on which partition your directory is saved by running the following.

    $ df -h
    Filesystem      Size  Used Avail Use% Mounted on
    udev            1.7G     0  1.7G   0% /dev
    tmpfs           339M  1.5M  338M   1% /run
    /dev/sda2       454G   13G  419G   3% /
    tmpfs           1.7G  179M  1.5G  11% /dev/shm
    tmpfs           5.0M     0  5.0M   0% /run/lock
    tmpfs           1.7G     0  1.7G   0% /sys/fs/cgroup
    /dev/sda1       511M  5.0M  507M   1% /boot/efi
    tmpfs           339M   12K  339M   1% /run/user/0

Finally we can now see when the file was created along with it's last access and modified time.

    $ sudo debugfs -R 'stat <25035952>' /dev/sda2
    Inode: 25035952   Type: regular    Mode:  0755   Flags: 0x80000
    Generation: 3370929681    Version: 0x00000000:00000001
    User:     0   Group:     0   Project:     0   Size: 203
    File ACL: 0
    Links: 1   Blockcount: 8
    Fragment:  Address: 0    Number: 0    Size: 0
    ctime: 0x5e888c7f:aee49184 -- Sat Apr  4 14:32:47 2020
    atime: 0x5e888c84:2b4a7d4c -- Sat Apr  4 14:32:52 2020
    mtime: 0x5e888c7f:aee49184 -- Sat Apr  4 14:32:47 2020
    crtime: 0x5e872d42:01b703fc -- Fri Apr  3 13:34:10 2020
    Size of extra inode fields: 32
    Inode checksum: 0xc1fd55de

## How long is system running?

To find out how long the sytem has been up and running for we can execute the following linux command.

	$ uptime
	09:11:22 up 32 min,  1 user,  load average: 0.00, 0.03, 0.22

## Current working directory

the pwd command the current working directory you are in.

	$ pwd
	/root/bashing-away

## Compress a file

In order to compress a file and keep the original we can execute the following command.

	$ gzip -k file


## Uncrompress a ZIP file

In order to uncompress a file we can execute the following command.

	$ unzip file.zip


## sed


## awk


## grep


## Change file permissions

chmod

## System Information

Uname command displays important information about the system such as — Kernel name, Host name, Kernel release number,
Processor type, etc.,

Sample uname output from a Ubuntu laptop is shown below.

	$ uname -a
	Linux kali 5.4.0-kali4-amd64 #1 SMP Debian 5.4.19-1kali1 (2020-02-17) x86_64 GNU/Linux

## Groups

Linux has built in functions to determine groups as well as manage the permissions of the groups.

	$ groups
	root

## History

In order to view the commands that a user has inputted previously. By default it will show the last 500 commands but we can limit this even less.

	$ history 10
	1169  history 10
	1170  ls
	1171  cd 
	1172  mkdir tmp
 	1173  ls
 	1174  cd bashing-away/
	1175  ifconfig
 	1176  ls
 	1177  nano README.md 
 	1178  history 10


## Manual Command

The man command displays the ‘man pages’ or user manual of a command. This can be helpful in order to determine commands for certain packages within Linux.

	$ man nmap
	NMAP(1)                                                                Nmap Reference Guide                                                               NMAP(1)

	NAME
       	nmap - Network exploration tool and security / port scanner

	SYNOPSIS
       	nmap [Scan Type...] [Options] {target specification}

	DESCRIPTION
       	Nmap (“Network Mapper”) is an open source tool for network exploration and security auditing. It was designed to rapidly scan large networks, although it
       	works fine against single hosts. Nmap uses raw IP packets in novel ways to determine what hosts are available on the network, what services (application
       	name and version) those hosts are offering, what operating systems (and OS versions) they are running, what type of packet filters/firewalls are in use,
       	and dozens of other characteristics. While Nmap is commonly used for security audits, many systems and network administrators find it useful for routine
       	tasks such as network inventory, managing service upgrade schedules, and monitoring host or service uptime.



## Burn ISO image to USB

First thing we need to do is find the location of the usb. To do this we will enter the following command which will list the filesystem to gather information.

	$ lsblk

The file systeme we are looking for is sdb which is the identifier for the USB. Now that we have that we can go to the directory to where the iso image file is downloaded and burn it to the usb.

	$ sudo dd bs=4M if=ubuntu-19.04-desktop-amd64.iso of=/dev/sdb
	159+1 records in
	159+1 records out
	670347264 bytes (670MB) copied 128.558 s, 5.2 MB/s
 
 ## Sort data
 
 In order to sort a file numerically we can use the sort command with the -n option as below:
 
  	$ cat file2
 	1
 	10
 	100
	145
 	2
 	3
 	45
 	75
 	$ sort -n file2
 	1
 	2
 	3
 	10
 	45
 	75
 	100
 	145
 	$

The sort command can also be used to sort by a file alphabetically or by month using the -M parameter. As with any Linux command in order to find out more bring up the man pages for further options.
