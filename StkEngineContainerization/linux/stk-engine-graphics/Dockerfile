# By default, start from the base STK Engine image
ARG baseImage=ansys/stk/stk-engine-baseline:12.4.0-centos7
FROM ${baseImage}

# Switch to root user
USER root

# Update repos
RUN yum -y update && yum -y upgrade

RUN dnf makecache --refresh
RUN dnf -y install dnf-plugins-core
#RUN dnf -y install epel-release
RUN dnf config-manager --set-enabled powertools
RUN dnf -y update

# Install graphics support
RUN yum -y install xorg-x11-server-Xvfb  xorg-x11-drivers
RUN yum -y install xorg-x11-apps xorg-x11-utils 
RUN yum -y install mesa-libGL mesa-libGLU mesa-libEGL 
RUN yum -y install mesa-libGLw mesa-libOSMesa-devel mesa-libgbm
RUN yum -y install mesa-dri-drivers mesa-vulkan-drivers llvm-devel
RUN yum -y install glx-utils

RUN mkdir /tmp/.X11-unix
RUN chmod 1777 /tmp/.X11-unix

# Add find command (for Rocky 8)
RUN yum -y install findutils

# Switch back to non-root user
USER stk

# Add the data package
COPY distributions/stk_data*.tgz /tmp/

# Unpack data into /home/stk (to restore 'STKData/VO')
RUN set -e; \
     find /tmp -name stk_data*.tgz -exec tar -zxf {} --strip-components=1 -C "${STK_USER_HOME}"/ \;

# # Remove TGZ
USER root
RUN rm /tmp/*.tgz
USER stk