FROM ubuntu:latest

RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential

COPY requirements.txt ./
RUN pip install -r requirements.txt

WORKDIR /app 
COPY jenkins.py ./

CMD [ "python3", "./jenkins.py"]