# loginfetch
ufetch-like dynamic `/etc/issue` generator

The script is yanked from here: https://github.com/leomarcov/debian-openbox/tree/master/script_loginfetch

Therefore, it is licensed with GPLv3, as repo mentioned above.

# how-to

The script basically creates a message you see on login in tty. So, what you'd want to do is to make it run before agetty spawns.
README in original script mentions how to do it with systemd, but we are not systemd enjoyers here.

`make install` automatically installs agetty service template for runit, and script for rc.d.

# installation

Clone the repo, enter the directory and:
`make install` or `make install DESTDIR=/your/desired/path`

# to-do

* Add more OS logos
