FROM openjdk:17-slim

RUN apt update && apt install -y curl

WORKDIR /server

COPY ./start.sh .
COPY ./server.properties .
COPY ./status.html /status.html

RUN chmod +x start.sh

EXPOSE 25565

CMD ["sh", "start.sh"]
