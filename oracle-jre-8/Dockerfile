# Pull base image
FROM identakid/debian:jessie

# Install Java, then cleanup
RUN \
    apt-get update && \
    apt-get install wget -yy && \
    wget http://javadl.sun.com/webapps/download/AutoDL\?BundleId\=101400 && \
    mv AutoDL\?BundleId\=101400 java.tar.gz && \
    mkdir -p /usr/java/ && \
    cd /usr/java/ && \
    tar zxvf /java.tar.gz && \
    ln -s /usr/java/jre1.8.0_31/bin/java /bin/java && \
    rm /java.tar.gz && \
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

#ADD []
#ONBUILD ADD []
#EXPOSE []
#VOLUME []
#ENV SHELL []

ENTRYPOINT ["/bin/bash"]
#CMD []
