FROM python:3-slim
RUN mkdir /storage
COPY radicale.conf /storage/radicale.conf
RUN python3 -m pip install --upgrade radicale
ENTRYPOINT ["python3",  "-m radicale",  "--storage-filesystem-folder /storage/radicale-collections", "--config /storage/radicale.conf"]
VOLUME /storage
EXPOSE 5232
