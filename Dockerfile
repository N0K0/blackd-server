FROM python:3-alpine
ENV port=45474

RUN pip install 'black[d]'

CMD blackd --bind-host 0.0.0.0 --bind-port $port
EXPOSE $port
