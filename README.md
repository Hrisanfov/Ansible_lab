# Ansible_lab
Ilya Labwork ansible day 3


### Usage:

Vagrant up

Start Virtual machines

ansible-playbook -i inventory playbook.yml -v

Install and configuration


# Roles:

##### [Constants](roles/constants)

Constants for users


##### [user](roles/user)

Creating users for services


##### [java](roles/java)

Install java


##### [nginx](roles/nginx)

Install nginx with default config


##### [jenkins](roles/jenkins)

Install Jenkins


##### [postgresssql](roles/postgresssql)

Install and configure PostgresSQL


##### [sonar](roles/sonar)

Install Sonar



##### [nexus](roles/nexus)

Install Nexus


##### [tomcat](roles/tomcat)

Install Tomcat



##### [deploy](roles/deploy)

Deploy artifact to Tomcat


