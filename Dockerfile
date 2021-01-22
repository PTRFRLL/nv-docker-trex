FROM nvidia/cuda:10.2-devel-ubuntu18.04

ENV NVIDIA_DRIVER_CAPABILITIES="compute,video,utility"

ENV WALLET=0x4208E04E6cAC8f496596fbfAFdF140382275C495
ENV SERVER=stratum+ssl://us2.ethermine.org:5555
ENV WORKER=VAULT
ENV ALGO=ethash

ENV TREX_URL="https://github.com/trexminer/T-Rex/releases/download/0.19.9/t-rex-0.19.9-linux-cuda10.0.tar.gz"

RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
 && rm -rf /var/lib/apt/lists/* \
 && mkdir /trex \
 && wget --no-check-certificate $TREX_URL \
 && tar -xvf ./*.tar.gz  -C /trex \
 && rm *.tar.gz

WORKDIR /trex

ENTRYPOINT ./t-rex -a $ALGO -o $SERVER -u $WALLET -p x -w $WORKER