FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y install zip git wget curl
RUN git clone https://github.com/kamatama41/tfenv.git /tmp/tfenv
RUN ln -s /tmp/tfenv/bin/* /usr/local/bin
RUN tfenv list-remote | sort | grep -v '-' | tail -10 | xargs -L 1 tfenv install
RUN tfenv use 0.8.0
