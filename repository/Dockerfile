FROM ubuntu:focal
RUN apt-get update -y && apt-get install libssl-dev dos2unix -y
COPY DeadlineRepository-*-linux-x64-installer.run .
COPY repo-setup.sh .
RUN chmod +x repo-setup.sh && \
    dos2unix repo-setup.sh
CMD ./repo-setup.sh