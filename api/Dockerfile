FROM ubuntu:18.04

RUN apt update && apt upgrade -y && apt install -y software-properties-common && \
    add-apt-repository -y ppa:deadsnakes/ppa && apt update && apt install -y python3.7 && \
    apt-get install -y python3-pip

RUN python3.7 -m pip install tweepy && python3.7 -m pip install Flask && python3.7 -m pip install mysql-connector-python
RUN mkdir /opt/itau && mkdir /var/log/api/
COPY itau/* /opt/itau/

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.7.2/wait /wait
RUN chmod +x /wait

WORKDIR /opt/itau
EXPOSE 5000

CMD /wait && /usr/bin/python3.7 web_server.py
#ENTRYPOINT ["/usr/bin/python3.7", "web_server.py"]
