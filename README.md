# loginfetch
ufetch-like dynamic `/etc/issue` generator

The script is yanked from here: https://github.com/leomarcov/debian-openbox/tree/master/script_loginfetch

Therefore, it is licensed with GPLv3, as repo mentioned above.

# how-to

The script basically creates a message you see on login in tty. So, what you'd want to do is to make it run everytime agetty spawns.
README in original script mentions how to do it with systemd, but we are systemd enjoyers here. But seriously, I'm going to provide
a modified runit service and or custom agetty script to put in inittab for sysvinit, would probably also add a systemd unit.

For other init systems, I have no experience with them, but I would want to at least provide a solution for OpenRC.

# installation

`make install` or `make install DESTDIR=/your/desired/path`

Or get Slackware package I created from release. :-) 

# to-do

* Add more OS logos
* Add service scripts for init systems
