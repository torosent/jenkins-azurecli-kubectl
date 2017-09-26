FROM jenkins/jenkins:lts
USER root
RUN  apt-get update && apt-get install -y python3.5
RUN echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ wheezy main" | \
    tee /etc/apt/sources.list.d/azure-cli.list
RUN apt-key adv --keyserver packages.microsoft.com --recv-keys 417A0893
RUN apt-get install apt-transport-https && apt-get update && apt-get install azure-cli
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN  mv ./kubectl /usr/local/bin/kubectl && chown jenkins: /usr/local/bin/kubectl && chmod +x ./kubectl
USER jenkins
