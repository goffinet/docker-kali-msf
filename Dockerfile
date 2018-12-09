# Docker container with metasploit.
#
# Use Kali Linux base image (2.0)
FROM goffinet/kali-base
MAINTAINER Francois Goffinet "goffinet@goffinet.org"

ENV DEBIAN_FRONTEND noninteractive

ADD ./init.sh /init.sh

# Install metasploit
RUN apt-get -y update ; apt-get -y --force-yes install ruby metasploit-framework

CMD /init.sh
