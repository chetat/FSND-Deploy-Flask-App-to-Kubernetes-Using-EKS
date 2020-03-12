FROM python:3.7.5-slim
COPY . /examples

WORKDIR /examples

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080","main:APP"]