#!/bin/bash
source $1
#download artifact

cd /tmp
wget http://nexus-ci.playpit.by/repository/MNT-pipeline-training/ikhrysanfau/pipeline-ikhrysanfau/$build_number/pipeline-ikhrysanfau-$build_number.tar.gz
#unarchive war
tar -xvzf pipeline-ikhrysanfau-$build_number.tar.gz

#deploy to tomcat
curl -T '/tmp/helloworld-ws/target/helloworld-ws.war' 'http://$user:$password@192.168.56.103:8080/manager/text/deploy?path=/&update=true&tag=$tag'

#undeploy
#curl -T '/tmp/helloworld-ws/target/helloworld-ws.war' 'http://jenkins:jenkins@192.168.56.103:8080/manager/text/undeploy?path=/&update=true'
