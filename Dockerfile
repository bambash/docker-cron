FROM ubuntu:latest

RUN apt update && apt install cron -y

# Add crontab file in the cron directory
ADD Cronfiles /etc/cron.d/
 
# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/*

WORKDIR /etc/cron.d

# Run the command on container startup
CMD cron -f
