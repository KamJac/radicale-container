FROM python:3-slim
RUN mkdir /storage
RUN python3 -m pip install --upgrade radicale
ENTRYPOINT ["python3 -m radicale", "--storage-filesystem-folder=/storage/radicale-collections", "--config=/storage/radicale.conf", "--ssl", "--certificate /etc/letsencrypt/live/$HOSTNAME/fullchain.pem", "--key /etc/letsencrypt/live/$HOSTNAME/privkey.pem"]
VOLUME /storage
EXPOSE 5232
