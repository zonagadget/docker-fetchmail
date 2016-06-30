FROM alpine:3.4
MAINTAINER Jeffrey Boehm "jeff@ressourcenkonflikt.de"

RUN apk --no-cache add fetchmail ca-certificates

COPY rootfs/ /
VOLUME /var/lib/fetchmail

RUN chown fetchmail /etc/fetchmailrc /var/lib/fetchmail && \
    chmod 400 /etc/fetchmailrc

USER fetchmail
CMD ["fetchmail", "-d", "900", "-N", "-f", "/etc/fetchmailrc", "-vv"]
