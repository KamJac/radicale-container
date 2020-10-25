FROM python:3
ENV PUID=666 PGID=666
RUN groupadd -g $PGID -rf abc && useradd -u $PUID -g $PGID -MNr abc
RUN mkdir /storage && chown $PUID:$PGID /storage
RUN python3 -m pip install --upgrade radicale==3.*
USER $PUID
CMD python3 -m radicale= -H 0.0.0.0:5232 --storage-filesystem-folder=/storage/radicale-collections --config=/storage/radicale.conf
VOLUME /storage
EXPOSE 5232
