FROM python:3.7.2

RUN mkdir /app
WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY app/ /app

ENTRYPOINT [ "python", "flatten.py"]
