FROM ubuntu:14.04
MAINTAINER Sreenivas Makam <smakam@yahoo.com>

RUN apt-get update

# Install apache2
RUN apt-get install -y apache2
RUN apt-get install postgresql-client-common
RUN apt-get install postgresql-client

EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D", "FOREGROUND"]
