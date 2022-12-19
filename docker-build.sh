sudo docker build -f ./Dockerfile-jenkins-node . -t jenkins-inbound-node:latest
sudo docker build -f ./Dockerfile-jenkins-jdk8 . -t jenkins-inbound-jdk8:latest
sudo docker build -f ./Dockerfile-jenkins-postgres . -t jenkins-inbound-postgres:latest