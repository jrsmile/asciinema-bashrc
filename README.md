# asciinema-bashrc
auto record terminal sessions to asciinema cast file.

Warning: if using Debian 9 change the asciinema parameter -i to -w or your session will no longer be able to login.
this is due to an old version in the debian repo.
if for some reason you can't login either keep a session open to edit /etc/bash.bashrc or connect via ssh with a different shell.
in putty its called: Connection >> SSH >> Remote Command /bin/sh should work.
