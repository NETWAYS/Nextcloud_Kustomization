# Nextcloud Kustomization: A Simple Introduction

> [!NOTE]
> This guide is not suitable for production use. It only serves as a basic illustration of how to customize applications with Kustomize.

## Useful Links

- [Kustomize Documentation](https://kubernetes.io/docs/tasks/manage-kubernetes-objects/kustomization)
- [Kustomize Website](https://kustomize.io)

## Quick Start

Before deploying to a cluster, add base64 encoded passwords to the `secret.yaml` and replace the example domain "my-nextcloud.works.com" inside the `kustomization.yaml`
with your own domain.

Apply your manifest to the cluster.

   ```sh
   cd Nextcloud_Kustomization/environment/development
   kubectl apply -k .
   ```
