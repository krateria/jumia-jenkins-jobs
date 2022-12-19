#!/bin/bash

aws ecr --profile jumia get-login-password --region eu-west-1 | docker login --username AWS --password-stdin 992122884453.dkr.ecr.eu-west-1.amazonaws.com
docker tag jenkins-inbound-node:latest 992122884453.dkr.ecr.eu-west-1.amazonaws.com/jenkins-inbound-node:latest
docker tag jenkins-inbound-jdk8:latest 992122884453.dkr.ecr.eu-west-1.amazonaws.com/jenkins-inbound-jdk8:latest
docker tag jenkins-inbound-postgres:latest 992122884453.dkr.ecr.eu-west-1.amazonaws.com/jenkins-inbound-postgres:latest

docker push 992122884453.dkr.ecr.eu-west-1.amazonaws.com/jenkins-inbound-node:latest
docker push 992122884453.dkr.ecr.eu-west-1.amazonaws.com/jenkins-inbound-jdk8:latest
docker push 992122884453.dkr.ecr.eu-west-1.amazonaws.com/jenkins-inbound-postgres:latest
