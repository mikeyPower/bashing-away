# bashing-away
A repo of bash scripts 


## Setting up Cron Job's for Scheduling
Ensure environment path is included in order for cron environment to be same as user environment in order to leverae system level programmes. See the attached link for examples on how to set crontab for certain times [link](https://crontab.guru/examples.html) 
.
    
    PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games

    0 * * * * /home/usr/example_script.sh
