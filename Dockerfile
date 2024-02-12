FROM python:3-slim

RUN apt-get update && apt-get install -y curl wget

RUN mkdir -p /opt/anki && pip install -U anki

COPY entrypoint.sh /opt/

WORKDIR /opt/
ENV SYNC_BASE=/opt/anki
EXPOSE 8080/tcp 8888/tcp
ENTRYPOINT ["./entrypoint.sh"]
