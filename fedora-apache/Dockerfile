FROM fedora:latest
LABEL maintainer fedora-apache-container <apache@podman.rulez>

RUN dnf install -y httpd && dnf clean all

RUN echo "Welcome to Fedora container" > /var/www/html/welcome

EXPOSE 80
CMD mkdir /run/httpd
CMD /usr/sbin/httpd -D FOREGROUND
