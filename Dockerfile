FROM python:alpine
WORKDIR /opt
COPY icecast_recorder.py .
RUN chmod +x icecast_recorder.py
ENTRYPOINT [ "python", "-u", "./icecast_recorder.py" ]