#!/bin/bash
systemctl start docker
yum -y remove '*openshift*'; yum clean all;  
yum --enablerepo=ose install 'openshift*' --exclude='openshift-clients' --exclude='*elastic*'
docker images  | grep -v jboss | awk {'print $3'} | xargs -r docker rmi -f
docker pull registry.access.redhat.com/openshift3/ose-haproxy-router:v3.0.2.0
docker pull registry.access.redhat.com/openshift3/ose-deployer:v3.0.2.0
docker pull registry.access.redhat.com/openshift3/ose-sti-builder:v3.0.2.0
docker pull registry.access.redhat.com/openshift3/ose-docker-builder:v3.0.2.0
docker pull registry.access.redhat.com/openshift3/ose-pod:v3.0.2.0
docker pull registry.access.redhat.com/openshift3/ose-docker-registry:v3.0.2.0
docker pull registry.access.redhat.com/openshift3/ose-keepalived-ipfailover:v3.0.2.0
docker pull registry.access.redhat.com/openshift3/ruby-20-rhel7
docker pull registry.access.redhat.com/openshift3/mysql-55-rhel7
docker pull registry.access.redhat.com/openshift3/php-55-rhel7
docker pull registry.access.redhat.com/jboss-eap-6/eap-openshift
docker pull openshift/hello-openshift

docker pull rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/ose-haproxy-router:latest
docker pull rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/ose-deployer:latest
docker pull rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/ose-sti-builder:latest
docker pull rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/ose-docker-builder:latest
docker pull rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/ose-pod:latest
docker pull rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/ose-docker-registry:latest
docker pull rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/ose-keepalived-ipfailover:latest
docker pull rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/ruby-20-rhel7
docker pull rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/mysql-55-rhel7
docker pull rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/php-55-rhel7
docker pull rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/nodejs-010-rhel7

docker tag rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/ose-haproxy-router:latest registry.access.redhat.com/openshift3/ose-haproxy-router:v3.0.2.0
docker tag rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/ose-deployer:latest registry.access.redhat.com/openshift3/ose-deployer:v3.0.2.0
docker tag rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/ose-sti-builder:latest registry.access.redhat.com/openshift3/ose-sti-builder:v3.0.2.0
docker tag rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/ose-docker-builder:latest registry.access.redhat.com/openshift3/ose-docker-builder:v3.0.2.0
docker tag rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/ose-pod:latest registry.access.redhat.com/openshift3/ose-pod:v3.0.2.0
docker tag rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/ose-docker-registry:latest registry.access.redhat.com/openshift3/ose-docker-registry:v3.0.2.0
docker tag rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/ose-keepalived-ipfailover:latest registry.access.redhat.com/openshift3/ose-keepalived-ipfailover:v3.0.2.0
docker tag rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/ruby-20-rhel7 registry.access.redhat.com/openshift3/ruby-20-rhel7
docker tag rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/mysql-55-rhel7 registry.access.redhat.com/openshift3/mysql-55-rhel7
docker tag rcm-img-docker01.build.eng.bos.redhat.com:5001/openshift3/php-55-rhel7 registry.access.redhat.com/openshift3/php-55-rhel7
