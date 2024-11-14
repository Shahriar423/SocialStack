# SocialStack with CacheRabbit
SocialStack is a Java-based project deployed with Vagrant and VirtualBox. This setup includes services managed on CentOS and Ubuntu virtual machines. It look like mini social site with 2 feature like rabbitMQ and Memcache.
# Project Overview
SocialStack is designed to provide a scalable and distributed setup for a web application. It utilizes a variety of services across different operating systems, managed with Vagrant and provisioned through VirtualBox.
# Technologies Used
##### Tomcat (on CentOS): Application server for deploying Java applications.

##### Memcached (on CentOS): In-memory caching system to reduce database load.

##### RabbitMQ (on CentOS): Message broker for reliable communication between services.

##### MySQL (on CentOS): Database server to store application data.

##### Nginx (on Ubuntu): Reverse proxy and load balancer for managing web traffic.

##### Maven for Artifact.

# Diagram

![socialstack](https://github.com/user-attachments/assets/329da68e-0623-4077-8d44-54042b8c0211)

# Prerequisites
##### Vagrant install
##### VirtualBox
# Vagrant Setup
In this project, the Vagrantfile is configured to spin up multiple VMs with specific roles:
##### CentOS VM: Hosts Tomcat, Memcached, RabbitMQ, and MySQL.
##### Ubuntu VM: Hosts Nginx as a reverse proxy.

### Application Deployment
###### The application artifact (.war file) is deployed directly in Tomcat’s ROOT directory. This setup allows the application to be accessible at the base URL without specifying additional paths.

## Run the Project

command: vagrant up

Access individual VMs:

CentOS VM: vagrant ssh centos

Ubuntu VM: vagrant ssh ubuntu

Verify Services:
Ensure Tomcat, Memcached, RabbitMQ, and MySQL are running on the CentOS VM.
Deploy the project in tomcat
Check Nginx status on the Ubuntu VM to confirm it's properly configured.
# Accessing the Application
The application should be accessible through Nginx on the designated port.
# ScreenShots

![login1 (1)](https://github.com/user-attachments/assets/c2916f0b-f729-42b1-afdf-47eb9330289e)
![page1 (1)](https://github.com/user-attachments/assets/01079bda-f318-459e-84bc-25e90fe6f9ed)


