# Podman Containers
This repository contains Podman specific container files and components/images relevant to Podman container technologies

Unlike other container tools implementations, the tools described here do not center around the monolithic Docker container engine and docker command.
Instead, Red Hat provides a set of command-line tools that can operate without a container engine. 

These include:
* podman - for directly managing pods and container images (run, stop, start, ps, attach, exec, and so on)
* buildah - for building, pushing, and signing container images
* skopeo - for copying, inspecting, deleting, and signing images
* runc - for providing container run and build features to podman and buildah
* crun - an optional runtime that can be configured and gives greater flexibility, control, and security for rootless containers
