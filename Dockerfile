FROM python:3.8.6

EXPOSE 5005

RUN pip install pipenv==2022.1.8

WORKDIR /opt/server

ADD Pipfile /opt/server
RUN pipenv install --skip-lock --system --sequential --verbose

ADD data /opt/server
ADD config.yml /opt/server

RUN rasa train nlu

CMD ["rasa", "run", "--enable-api"]
