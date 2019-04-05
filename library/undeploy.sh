#!/bin/bash
source $1
#deploy privous artifact to tomcat
curl -T '/etc/ansible/facts.d/helloworld-ws.war' 'http://$user:$password@192.168.56.103:8080/manager/text/deploy?path=/&update=true&tag=$tag'

#undeploy
#curl -T '/tmp/helloworld-ws/target/helloworld-ws.war' 'http://jenkins:jenkins@192.168.56.103:8080/manager/text/undeploy?path=/&update=true'
