FROM alpine:3.20

RUN apk add --no-cache ssmtp borgbackup openssh bash

RUN echo 'ssmtp_enable="YES"' >> /etc/rc.conf

# copy crontabs for root user
# COPY config/cronjobs /etc/crontabs/root

# start crond with log level 8 in foreground, output to stderr
CMD ["crond", "-f", "-d", "8"]
