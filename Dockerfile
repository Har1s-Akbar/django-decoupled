FROM python:3.11-slim

WORKDIR /project

COPY . /project/

RUN pip install pipenv && pipenv install --system

COPY . /project/