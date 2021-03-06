FROM python:3.8.6

EXPOSE 5005

WORKDIR /opt/server

ADD requirements.txt /opt/server
RUN pip install -r requirements.txt

ADD download_pretrained_model.py /opt/server
RUN python download_pretrained_model.py

ADD . /opt/server

RUN rasa train nlu

CMD ["rasa", "run", "--enable-api"]
