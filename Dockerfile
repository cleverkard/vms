FROM python:3.11-slim-buster

# set working directory
WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# run server
CMD python /usr/src/app/main.py