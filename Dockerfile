FROM openjdk:17-slim

RUN apt update && apt install -y curl

WORKDIR /server

COPY ./server/start.sh .
COPY ./server/server.properties .
COPY ./status.html /status.html

EXPOSE 25565

CMD ["sh", "start.sh"]
