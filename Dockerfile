FROM python:3-alpine
ENV port=45474

RUN pip install 'black[d]'

CMD blackd --bind-port $port
EXPOSE $port
