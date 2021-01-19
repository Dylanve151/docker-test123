FROM debian
RUN apt-get update && apt-get install -y \
  sudo \
  cron \
  && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN mkdir /verbs
WORKDIR /root
COPY startup.sh .
RUN touch log.log
RUN chmod 755 *.sh
CMD [ "/root/startup.sh" ]
