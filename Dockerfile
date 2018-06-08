FROM ubuntu:latest
# USER root

ENV DEBIAN_FRONTEND=noninteractive USER=root PORT=5901

RUN apt-get update -y
RUN apt-get upgrade -y
# RUN apt-get install -y --no-install-recommends --allow-unauthenticated ubuntu-desktop ubuntu-gnome-desktop kubuntu-desktop
RUN apt-get install -y --no-install-recommends --allow-unauthenticated ubuntu-desktop
# RUN apt-get install -y tightvncserver
RUN apt-get install -y vim wget net-tools

WORKDIR $HOME

EXPOSE $PORT

CMD ["/bin/bash"]
