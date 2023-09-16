FROM steamcmd/steamcmd:ubuntu-20

RUN apt-get update && apt-get install -y unzip wget

WORKDIR /fastgmad

ENV LD_LIBRARY_PATH="/fastgmad"

RUN wget https://github.com/WilliamVenner/fastgmad/releases/download/v0.1.1/fastgmad_linux.zip -O fastgmad_linux.zip && \
    unzip fastgmad_linux.zip && \
    rm fastgmad_linux.zip && \
    wget https://github.com/Meachamp/gmodws/releases/download/v1.5/gmodws.zip && \
    unzip gmodws.zip && \
    rm gmodws.zip && \
    mkdir -p /root/.steam/sdk64 && \
    cp steamclient.so /root/.steam/sdk64/

ENTRYPOINT ["/fastgmad/fastgmad"]
