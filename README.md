# loginfetch
ufetch-like dynamic `/etc/issue` generator

The script is yanked from here: https://github.com/leomarcov/debian-openbox/tree/master/script_loginfetch

Therefore, it is licensed with GPLv3, as repo mentioned above.

# how-to

The script basically creates a message you see on login in tty. So, what you'd want to do is to make it run before agetty spawns. 
[README](https://github.com/leomarcov/debian-openbox/blob/master/script_loginfetch/README.md) in the original script mentions how to do it with systemd, but we are not systemd enjoyers here, but I guess it should work.

`make install` automatically installs script in `/etc/rc.d/` Slackware / BSD style. Couldn't find any non-breaking agetty solution for runit to run it (hehe) dynamically, so by default the data displayed is quite static (no current memory, etc) - what I mean nothing should change to make `/etc/issue` too obsolete (maybe currently used disk space on root).

# installation

Clone the repo, enter the directory and:
`make install` or `make install DESTDIR=/your/desired/path`

# to-do

* Add more OS logos
* More optional info / more interesting outputs?
* Better instructions on running it
