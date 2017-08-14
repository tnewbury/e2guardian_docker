#
# Make e2guardian container
#
FROM ubuntu:latest
MAINTAINER Trevor Newbury "trevornewbury1@googlemail.com"

RUN apt-get update
RUN apt-get -y install vim wget git libevent-pthreads-2.0-5 libtommath0
RUN wget https://github.com/e2guardian/e2guardian/releases/download/v4.1.2/e2guardian_4.1.2_jessie_ubuntu16.04_amd64.deb
RUN dpkg -i /e2guardian_4.1.2_jessie_ubuntu16.04_amd64.deb
RUN apt-get -y install -f
RUN sed -i 's/127.0.0.1/192.168.1.251/'  /etc/e2guardian/e2guardian.conf
RUN service e2guardian start


EXPOSE 8080

