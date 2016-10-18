FROM ubuntu:xenial

# Use UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ENV DEBIAN_FRONTEND noninteractive

# Update Ubuntu and install various tools
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y \
    wget \
    apt-utils \
    build-essential

# Install Elixir
RUN wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb \
    && dpkg -i erlang-solutions_1.0_all.deb \
    && apt-get update \
    && apt-get install -y esl-erlang elixir
