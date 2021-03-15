FROM ubuntu:latest

RUN apt update
RUN apt install net-tools netcat inetutils-ping

CMD [ "/bin/bash", "-c", "while [ 1 ]; do echo '';sleep 300; done" ]
