FROM alpine:3.20

RUN apk add --no-cache borgbackup

# copy crontabs for root user
COPY config/cronjobs /etc/crontabs/root

# start crond with log level 8 in foreground, output to stderr
CMD ["crond", "-f", "-d", "8"]
