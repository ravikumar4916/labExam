FROM jupyter/scipy-notebook

RUN pip install joblib


USER root
RUN apt-get update && apt-get install -y jq

RUN mkdir model raw_data processed_data results


ENV RAW_DATA_DIR=/home/raw_data
ENV PROCESSED_DATA_DIR=/home/processed_data
ENV MODEL_DIR=/home/model
ENV RESULTS_DIR=/home/results
ENV RAW_DATA_FILE=hello.txt


COPY hello.txt ./raw_data/hello.txt
COPY preprocessing.py ./preprocessing.py
COPY train.py ./train.py
COPY test.py ./test.py
