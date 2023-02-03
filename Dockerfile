FROM ubuntu:20.04
RUN echo "deb https://repo.casperlabs.io/releases" bionic main | tee -a /etc/apt/sources.list.d/casper.list
RUN apt-get -y update; apt-get -y install curl gnupg
RUN curl -O https://repo.casperlabs.io/casper-repo-pubkey.asc
RUN apt-key add casper-repo-pubkey.asc
RUN apt update
RUN apt install -y casper-client

ENTRYPOINT ["casper-client"]