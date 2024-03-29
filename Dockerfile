FROM ubuntu:16.04

ENV MANTA_VERSION latest
RUN apt update && apt upgrade -y && apt install -y wget python bzip2 \
&& wget https://github.com/Illumina/manta/releases/download/v{MANTA_VERSION}/manta-{MANTA_VERSION}.centos6_x86_64.tar.bz2 \
&& tar -jxvf /manta-{MANTA_VERSION}.centos6_x86_64.tar.bz2 && rm /manta-{MANTA_VERSION}.centos6_x86_64.tar.bz2 \
&& apt remove wget bzip2 -y && apt autoclean -y && apt autoremove -y
