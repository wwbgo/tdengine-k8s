# TDengine Helm Chart

## Prerequisites Details
* Kubernetes 1.10+
* PV support on underlying infrastructure

## StatefulSet Details
* http://kubernetes.io/docs/concepts/abstractions/controllers/statefulsets/

## Chart Details
This chart will do the following:

* Implemented a dynamically scalable tdengine cluster using Kubernetes StatefulSet

## Installing the Chart

To install the chart with the release name `my-release`:

```bash
$ helm install --name my-release stable/tdengine
```

## Configuration

The following table lists the configurable parameters of the consul chart and their default values.

| Parameter               | Description                           | Default                                                    |
| ----------------------- | ----------------------------------    | ---------------------------------------------------------- |
| `Name`                  | TDengine statefulset name             | `tdengine`                                                 |
| `Image`                 | Container image name                  | `docker.flexem.com/library/tdengine:2.0.3.0`               |
| `ImageTag`              | Container image tag                   | `2.0.3.0`                                                  |
| `ImagePullPolicy`       | Container pull policy                 | `Always`                                                   |
| `Replicas`              | k8s statefulset replicas              | `3`                                                        |
| `Component`             | k8s selector key                      | `tdengine`                                                 |

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`.

Alternatively, a YAML file that specifies the values for the parameters can be provided while installing the chart. For example,

```bash
$ helm install --name my-release -f values.yaml stable/tdengine
```
> **Tip**: You can use the default [values.yaml](values.yaml)

## Cleanup orphaned Persistent Volumes

Deleting a StateFul will not delete associated Persistent Volumes.

Do the following after deleting the chart release to clean up orphaned Persistent Volumes.

```bash
$ kubectl delete pvc -l component=${RELEASE-NAME}-consul
```
