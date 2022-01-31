#!/bin/sh

container=$(buildah from fedora:latest)
buildah config --label maintainer="buildah@podman.rulez" $container

buildah run $container dnf install -y httpd
buildah run $container dnf clean all

buildah run $container bash -c "echo \"Welcome to Podman container\" > /var/www/html/welcome"

buildah config --port 80 $container
buildah config --cmd "/usr/sbin/httpd -DFOREGROUND" $container
buildah commit --format docker $container buildah-httpd:latest
