# By default, start from the base STK Engine image
ARG baseImage=ansys/stk/stk-engine-baseline:12.4.0-centos7
FROM ${baseImage}

USER root

# Install Java
RUN yum -y install java-11-openjdk 

# Install Ant
# RUN yum -y install ant
RUN yum -y install wget 
WORKDIR /usr/local/ant
RUN wget https://dlcdn.apache.org//ant/binaries/apache-ant-1.10.14-bin.tar.gz
RUN tar -xf apache-ant-1.10.14-bin.tar.gz --strip-components=1
RUN rm *.tar.gz
ENV ANT_HOME=/usr/local/ant PATH=${PATH}:${ANT_HOME}/bin

# Add find command (for Rocky 8)
RUN yum -y install findutils

# Switch back to non-root user
USER stk

WORKDIR /home/stk

# Add the java packages
COPY distributions/stk_*.tgz /tmp/

# Unpack Java binaries and samples into /home/stk
RUN set -e; \
     find /tmp -name stk_*.tgz -exec tar -zxf {} --strip-components=1 -C "${STK_USER_HOME}"/ \;

# # Remove TGZ
USER root
RUN rm /tmp/*.tgz
USER stk
