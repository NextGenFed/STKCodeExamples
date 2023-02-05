# By default, start from the base STK Engine image
ARG baseImage=ansys/stk/stk-engine-baseline:12.6.0-centos7
FROM ${baseImage}

# Switch to root user
USER root

# Update repos
RUN yum -y update && yum -y upgrade

RUN dnf makecache --refresh
RUN dnf -y install dnf-plugins-core
#RUN dnf -y install epel-release
#RUN dnf config-manager --set-enabled powertools
RUN dnf -y update

# Install graphics support
RUN yum -y install mesa-dri-drivers 
RUN yum -y install glx-utils

RUN mkdir /tmp/.X11-unix
RUN chmod 1777 /tmp/.X11-unix

# Add WSL support (uncomment for Rocky 9)
# RUN mv /usr/lib64/dri/swrast_dri.so /usr/lib64/dri/swrast_dri.so_back
# COPY swrast_dri.so  /usr/lib64/dri/

# RUN ln -s /usr/lib64/libLLVM-14.so /usr/lib64/libLLVM-14.so.1
# RUN  dnf install -y lm_sensors-libs
# RUN ln -sf /usr/lib64/libsensors.so.4.5.0 /usr/lib64/libsensors.so.5

# Add find command (for Rocky 8)
RUN yum -y install findutils

# Switch back to non-root user
USER stk

ENV LD_LIBRARY_PATH="${STK_USER_HOME}/bin:/usr/lib/wsl/lib"

# Add the data package
COPY distributions/stk_data*.tgz /tmp/

# Unpack data into /home/stk (to restore 'STKData/VO')
RUN set -e; \
     find /tmp -name stk_data*.tgz -exec tar -zxf {} --strip-components=1 -C "${STK_USER_HOME}"/ \;

# # Remove TGZ
USER root
RUN rm /tmp/*.tgz

USER stk