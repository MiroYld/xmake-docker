# syntax=docker/dockerfile:experimental
FROM alpine:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apk add  curl unzip bash

# xmake installation
ENV XMAKE_ROOT=y
RUN curl -fsSL https://xmake.io/shget.text | bash
RUN echo "source ~/.xmake/profile" >> ~/.bashrc


RUN echo 'alias xmake="/root/.local/bin/xmake"' >> /root/.bashrc
CMD ["/bin/bash"]

