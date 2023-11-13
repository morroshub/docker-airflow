FROM apache/airflow:2.2.0 AS airflow

USER root

RUN apt-get update

USER airflow

ENV PYTHONPATH "${PYTHONPATH}:/opt/airflow/"

COPY . . 
