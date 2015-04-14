# Pull base image
FROM identakid/debian:latest

# A few problems with compiling Java from source:
#  1. Oracle.  Licensing prevents us from redistributing the official JDK.
#  2. Compiling OpenJDK also requires the JDK to be installed, and it gets
#       really hairy.

# Install Java, then cleanup
RUN \
    apt-get update -yy && \
    apt-get dist-upgrade -yy && \
    apt-get purge wget -yy && \
    apt-get clean -yy && \
    apt-get autoclean -yy && \
    apt-get autoremove -yy && \
    rm -rf /usr/share/locale/* && \
    rm -rf /var/cache/debconf/*-old && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/doc/* && \
    echo "`cat /etc/issue.net` Docker Image - identakid/java/oracle-jre-8 - `date +'%Y/%m/%d'`" > /etc/motd

#RUN apt-get update && apt-get install -y unzip && rm -rf /var/lib/apt/lists/*

ENV JAVA_VERSION 8u40
ENV JAVA_DEBIAN_VERSION 8u40-b27-1

# see https://bugs.debian.org/775775
# and https://github.com/docker-library/java/issues/19#issuecomment-70546872
ENV CA_CERTIFICATES_JAVA_VERSION 20140324

RUN apt-get update && apt-get install -y openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" && rm -rf /var/lib/apt/lists/*

# see CA_CERTIFICATES_JAVA_VERSION notes above
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure


#ADD []
#ONBUILD ADD []
#EXPOSE []
#VOLUME []
#ENV SHELL []

ENTRYPOINT ["/bin/bash"]
#CMD []
