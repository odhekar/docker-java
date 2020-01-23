ARG JVER=11.0.5_p10-r0
FROM docker:stable

#Ref https://github.com/docker-library/openjdk/blob/47a6539cd18023dafb45db9013455136cc0bca07/8/jdk/alpine/Dockerfile

ENV JAVA_HOME /usr/lib/jvm/default-jvm
ENV PATH $PATH:/usr/lib/jvm/default-jvm/jre/bin:/usr/lib/jvm/default-jvm/bin

RUN set -x \
  && apk add --no-cache openjdk11-jdk="$JVER"
