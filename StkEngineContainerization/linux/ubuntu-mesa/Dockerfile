ARG baseImage=ubuntu:20.04
FROM ${baseImage}

# Update repos
RUN apt-get -y update 
RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:kisak/kisak-mesa -y 
RUN apt-get -y update 

# Upgrade libraries and drivers
RUN apt-get -y upgrade

# Install graphics support
RUN apt-get -y install mesa-utils x11-apps glmark2 xvfb

# For use in WSLg
RUN mkdir /tmp/.X11-unix
RUN chmod 1777 /tmp/.X11-unix
ENV LD_LIBRARY_PATH="/usr/lib/wsl/lib"