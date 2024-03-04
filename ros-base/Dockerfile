############################################################
## Usage:                                                 ##
##                                                        ##
## TO BUILD:                                              ##
##                                                        ##
## docker build -t  container:tag . --progress=plain      ##
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

SHELL ["/bin/bash", "-c"]

# install general dependencies 
COPY setup/rosdeps.install /setup/
RUN /setup/rosdeps.install

# Install ROS via: https://docs.ros.org/en/iron/Installation/Ubuntu-Install-Debians.html
COPY setup/ros.install /setup/
RUN /setup/ros.install

CMD ["/bin/bash"]
