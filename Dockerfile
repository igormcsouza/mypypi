FROM python:3.9-slim

RUN pip install --upgrade pip pypiserver

WORKDIR home/mypypackages/

COPY packages/ /data/packages/

CMD echo "Starting Serve at localhost:$PORT" && \
	pypi-server -p $PORT -P . -a . /data/packages
