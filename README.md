# jenkins-azurecli-kubectl
A docker container with Jenkins,Azure CLI 2.0 and kubectl

to run:
```bash
docker run --rm -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home torosent/jenkins-azurecli-kubectl:1.0.0
```
