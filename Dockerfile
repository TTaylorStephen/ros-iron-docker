############################################################
## Usage:                                                 ##
##                                                        ##
## TO BUILD:                                              ##
##                                                        ##
## docker build --build-arg UNAME=steve0\                 ##
##              --build-arg PWORD=steve0\                 ##
##              -t container:tag .                        ##
##                                                        ##
## TO RUN:                                                ##
##                                                        ##
## docker compose up -d                                   ##
## docker exec -it <container> bash                       ##
##                                                        ##
## docker run -it --name=steve0 container:tag bash        ##
## docker run -it --rm --name=steveO container:tag bash   ##
############################################################

FROM ubuntu:22.04

# build arguments
ARG UNAME 
ARG PWORD
SHELL ["/bin/bash", "-c"]

# set container permissions 
COPY setup/user.config setup/
RUN setup/user.config

# set default shell environment 
WORKDIR /home/$UNAME

# install general dependencies 
COPY setup/deps.install setup/
RUN setup/deps.install

# Install ROS via: https://docs.ros.org/en/iron/Installation/Ubuntu-Install-Debians.html
COPY setup/ros.install setup/
RUN setup/ros.install

# run entry point stuff 
COPY setup/entrypoint setup/
ENTRYPOINT ["/bin/bash", "setup/entrypoint"]

# set user to run container as
USER $UNAME 
