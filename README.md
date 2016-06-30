fetchmail
=========

This is a Docker image for [fetchmail](http://www.fetchmail.info/).

Usage
-----
1. Copy [docker-compose.yml](https://github.com/jeboehm/docker-fetchmail/blob/master/docker-compose.yml) to a local directory and adjust it to fit your needs.
2. Create `fetchmailrc` and `Dockerfile` from the examples below.
3. The command `docker-compose up` creates a container with your configuration.

Examples
--------
### Dockerfile
```
FROM jeboehm/fetchmail:latest
```

### fetchmailrc
```
poll pop3.web.de with proto POP3
	user "example@web.de" there with password "changeme" is fetchmail here sslcertck
	smtphost your.mta.host.example.com
	smtpname user@example.com

poll pop.gmx.net with proto POP3
	user "example@gmx.de" there with password "changeme" is fetchmail here sslcertck
	smtphost your.mta.host.example.com
	smtpname user@example.com
```
