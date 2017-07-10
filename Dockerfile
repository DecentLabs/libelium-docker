FROM resin/rpi-raspbian
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y git

RUN mkdir -p /home/install/libelium
RUN cd /home/install/libelium
RUN git clone https://github.com/boerisfrusca/Libelium-LoRa .

WORKDIR /home/install/libelium/src
RUN make clean && make release NAME=lora_config
RUN make clean && make release NAME=lora_setup 
RUN make clean && make release NAME=lora_sender
RUN make clean && make release NAME=lora_daemon

