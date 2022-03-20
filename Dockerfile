FROM python:3.8.13-slim-buster
RUN apt-get update
RUN apt-get -y install gcc
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install dtale
EXPOSE 40000
CMD dtale --host localhost --port 40000