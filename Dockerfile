FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /project

COPY . /project/

RUN pip install pipenv && pipenv install --system

COPY . /project/