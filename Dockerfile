FROM hseeberger/scala-sbt
MAINTAINER vitalcode

ADD . /data
WORKDIR /data
RUN sbt clean docker:stage

ENTRYPOINT ["target/docker/stage/opt/docker/bin/akka-cluster-docker"]
CMD []

