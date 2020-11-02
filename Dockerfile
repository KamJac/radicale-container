FROM python:3-slim
LABEL maintainer="kamilj@tutanota.com"
RUN mkdir /storage
COPY radicale.conf /storage/radicale.conf
RUN python3 -m pip install radicale
ENTRYPOINT ["radicale", "--config=/storage/radicale.conf"]
VOLUME /storage
EXPOSE 5232
