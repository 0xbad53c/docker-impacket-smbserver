FROM python:latest
WORKDIR /opt
RUN git clone https://github.com/fortra/impacket.git
RUN pip install impacket
RUN mkdir /smbshare
EXPOSE 445
WORKDIR /opt/impacket/examples
entrypoint ["python", "./smbserver.py"]
