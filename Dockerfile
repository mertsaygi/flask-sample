FROM  python:3.9.1 

RUN apt-get update -y && \
    apt-get install -y python-pip python-dev

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

RUN pip install Jinja2

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
