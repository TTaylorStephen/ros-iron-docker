FROM ros-iron-base:v0.0.0
#
## config is default /bin/bash, $HOME is $USER from parent image, default dev
#
#
# docker build --build-arg UNAME=dev --build-arg PWORD=dev -t ros-nano . --progress="plain"
#
# set container permissions 


# build arguments
ARG UNAME 
ARG PWORD

SHELL ["/bin/bash", "-c"]

# setup user directory
COPY setup/user.config setup/
RUN setup/user.config

# set default shell environment 
WORKDIR /home/$UNAME

# setup user directory
COPY setup/nanodeps.install /setup/
RUN /setup/nanodeps.install

ENV ROBO_HOME /home/$UNAME/iRobotCreate2

# ros workspace build
COPY setup/kinect.config /setup/
RUN /setup/kinect.config

# ros workspace build
COPY setup/workspace.install /setup/
RUN /setup/workspace.install

# set user to run container as
USER $UNAME 

# run entry point stuff 
COPY setup/entrypoint /setup/
ENTRYPOINT ["/bin/bash", "/setup/entrypoint"]

CMD ["/bin/bash"]
