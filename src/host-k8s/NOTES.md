## Usage Scenarios

Depending on your configuration, you may require additional features.

From your dev container, you want to:

1. Access the minikube instance running on your host machine:
    - host-minikube-certs
    - host-docker
    - host-k8s
2. Access some other k8s (Rancher Desktop, Colima) running on your host machine:
    - host-docker
    - host-k8s
3. Access only your host's k8s config (perhaps to connect to remote clusters):
    - host-k8s

(These are all implemented as separate features because mounts are either present or absent - you can't control them with options.)

## Origin

This is a feature-ification of the dev-container example found here: 
https://github.com/Microsoft/vscode-dev-containers/tree/main/containers/kubernetes-helm
