FROM qnimbus/docker-base:0.1
MAINTAINER B. van Wetten <bas@vwn.io>

#########################################
##         RUN INSTALL SCRIPT          ##
#########################################
ADD install.sh /tmp/
RUN chmod +x /tmp/install.sh && /tmp/install.sh

#########################################
##         EXPORTS AND VOLUMES         ##
#########################################
VOLUME ["/data","/backups"]
EXPOSE 4242 4243

#########################################
##                 CLEANUP             ##
#########################################

# Clean up APT when done.
RUN apt-get clean -y && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/*
