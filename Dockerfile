FROM apache/airflow:2.7.0

USER root
RUN apt-get update && apt-get install -y vim

USER airflow
WORKDIR /opt/airflow

# Copy DAGs and scripts
COPY dags/ /opt/airflow/dags/
COPY scripts/ /opt/airflow/scripts/

ENTRYPOINT ["/opt/airflow/scripts/entrypoint.sh"]
CMD ["webserver"]
