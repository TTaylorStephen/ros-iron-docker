# Ros Iron Docker Environment

**Builds Ubuntu 22.04 with ROS 2 Iron Irwini Installed**

### Linux Usage:
 
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
1. Start Container: 
    > `Open terminal: ctrl+shift+t`
    > `docker start <custom_name>`
2. Attach to shell 1 and run publisher:
    > `docker attach <custom_name>`
    > `ros2 run demo_nodes_cpp talker`
3. Attach to shell 2 and run subscriber:
    > `docker exec -it <custom_name> bash`
    > `ros2 run demo_nodes_py listener`
