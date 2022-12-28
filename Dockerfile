FROM ubuntu:bionic

RUN apt-get update
RUN apt-get install python3 python3-pip -y
RUN pip3 install --upgrade pip

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt
COPY ./test.py /app/test.py
RUN pip3 install -r requirements.txt

CMD python3 test.py