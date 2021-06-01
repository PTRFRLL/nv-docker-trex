FROM nvidia/cuda:11.1.1-base

ENV NVIDIA_DRIVER_CAPABILITIES="compute,video,utility"

ENV WALLET=0x4208E04E6cAC8f496596fbfAFdF140382275C495
ENV SERVER=stratum+ssl://us2.ethermine.org:5555
ENV WORKER=Rig
ENV ALGO=ethash
ENV PASS=x

ENV TREX_URL="https://trex-miner.com/download/t-rex-0.20.4-linux.tar.gz"

ADD config/config.json /home/nobody/

RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir /trex \
    && wget --no-check-certificate $TREX_URL \
    && tar -xvf ./*.tar.gz  -C /trex \
    && rm *.tar.gz

WORKDIR /trex

ADD init.sh /trex/

VOLUME ["/config"]

CMD ["/bin/bash", "init.sh"]
