# By default, start from the base STK Engine image
ARG baseImage=ansys/stk/stk-engine-baseline:12.4.0-centos7
FROM ${baseImage}

# Install Java
USER root

RUN yum -y install java-11-openjdk ant

# Add find command (for Rocky 8)
RUN yum -y install findutils

# Switch back to non-root user
USER stk

# Add the java packages
COPY distributions/stk_*.tgz /tmp/

# Unpack Java binaries and samples into /home/stk
RUN set -e; \
     find /tmp -name stk_*.tgz -exec tar -zxf {} --strip-components=1 -C "${STK_USER_HOME}"/ \;

# # Remove TGZ
USER root
RUN rm /tmp/*.tgz
USER stk
