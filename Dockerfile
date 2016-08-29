FROM openjdk:8-jre

MAINTAINER jveldkam

RUN echo "deb http://debian.datastax.com/datastax-ddc 3.7 main" | tee -a /etc/apt/sources.list.d/cassandra.sources.list
#ADD file /to/location
RUN curl -L https://debian.datastax.com/debian/repo_key | apt-key add -
RUN apt-get update && apt-get -y install datastax-ddc
