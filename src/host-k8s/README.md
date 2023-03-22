
# Host machine Kubernetes configuration (host-k8s)

Makes the kubernetes configuration in the host available to the dev container. Rewrites the configuration to replace references to localhost.

## Example Usage

```json
"features": {
    "ghcr.io/wskb/devcontainer-features/host-k8s:0": {}
}
```

## Options

| Options Id | Description | Type | Default Value |
|-----|-----|-----|-----|
| localk8shost | Host by which kubernetes clients can connect with the cluster (replaces localhost) | string | host.docker.internal |
| localk8sipfromhost | Host to resolve to an ip address with which kubernetes clients can connect with the cluster (replaces localhost). localk8shost must be set to an empty string | string | - |

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


---

_Note: This file was auto-generated from the [devcontainer-feature.json](https://github.com/wskb/devcontainer-features/blob/main/src/host-k8s/devcontainer-feature.json).  Add additional notes to a `NOTES.md`._
