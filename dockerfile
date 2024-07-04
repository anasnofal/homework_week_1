FROM python:3.9

RUN apt-get install wget
WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY data_ingest.py data_ingest.py
ENTRYPOINT [ "python","data_ingest.py" ]