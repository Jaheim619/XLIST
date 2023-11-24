FROM ubuntu:22.04
RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/list/* /tmp/* /var/tmp/*
RUN echo 'root:ljh123' | chpasswd
EXPOSE 22
CMD ["/use/bin/shellinaboxd", "-t", "-s", "/:LOGIN"]
