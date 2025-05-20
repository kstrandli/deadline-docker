FROM ubuntu:focal
RUN apt-get update -y && apt-get install libssl-dev dos2unix nfs-common -y

COPY DeadlineClient-*-linux-x64-installer.run DeadlineClient-installer.run
RUN chmod u+x DeadlineClient-installer.run 
RUN	./DeadlineClient-installer.run --binariesonly true --mode unattended --enable-components proxyconfig,webservice_config

COPY run.sh .
RUN chmod +x run.sh && \
    dos2unix run.sh

COPY build-config.sh .
RUN chmod +x build-config.sh && \
    dos2unix build-config.sh

RUN ls
CMD [bash]
