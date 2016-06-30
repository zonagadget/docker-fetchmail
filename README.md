fetchmail
=========

This is a Docker image for [fetchmail](http://www.fetchmail.info/).
You can configure the daemon by mounting a file to `/etc/fetchmailrc`. Alternatively you can build a new image
which contains the file.

The container will automatically run fetchmail as an unprivileged daemon and log its messages to Docker.
