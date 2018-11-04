FROM python:3.6

ENV STAGE="settings"

EXPOSE 8000

COPY src/ /opt/app
WORKDIR /opt/app

RUN pip install -r /opt/app/requirements.txt