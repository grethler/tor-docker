FROM python:3.9.5-slim-buster

WORKDIR /app

COPY ./website /app

RUN pip install --no-cache-dir -r /app/requirements.txt

RUN python /app/manage.py migrate --noinput
