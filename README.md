
# Ros Iron Docker Environment
*Image available on [ghcr.io](https://github.com/users/TTaylorStephen/packages/container/package/ros-iron-base)*   
**Builds Ubuntu 22.04 with ROS 2 Iron Irwini Installed**

## Linux:

##### **Build Image**                                                      
> `docker build --build-arg UNAME=<username> --build-arg PWORD=<password> -t container:tag .`                     

</br>

##### **Run Container**        
These commands will create a new docker container, using the image built above. 
Only run when you want a new container                                              

a. Re-use container:         
>`docker run -it --name=<custom_name> container:tag bash` 

b. Delete container after use:   
>`docker run -it --rm --name=<custom_name> container:tag bash`

</br>

##### **Test Install** 
1. Open 2 Terminals:
    > `ctrl+shift+t (x2)`   
2. From terminal 1 - start container, attach, and run publisher:
    > `docker start <custom_name>`  
    > `docker attach <custom_name>`  
    > `ros2 run demo_nodes_cpp talker`  
3. From terminal 2 - attach new shell and run subscriber:
    > `docker exec -it <custom_name> bash`  
    > `ros2 run demo_nodes_py listener`  