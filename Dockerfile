FROM python:3
RUN mkdir /storage
RUN python3 -m pip install --upgrade radicale
CMD python3 -m radicale --storage-filesystem-folder=/storage/radicale-collections --config=/storage/radicale.conf
VOLUME /storage
EXPOSE 5232
