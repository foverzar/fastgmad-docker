FROM ubuntu:focal

RUN apt-get update && apt-get install -y unzip wget

WORKDIR /fastgmad

RUN wget https://github.com/WilliamVenner/fastgmad/releases/download/v0.1.1/fastgmad_linux.zip -O fastgmad_linux.zip && \
    unzip fastgmad_linux.zip && \
    rm fastgmad_linux.zip

ENTRYPOINT ["/fastgmad/fastgmad"]
