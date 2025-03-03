#!/bin/bash
echo "Initializing Airflow database..."
airflow db init

echo "Creating an admin user..."
airflow users create \
    --username admin \
    --password admin \
    --firstname Admin \
    --lastname User \
    --role Admin \
    --email admin@example.com

echo "Starting Airflow webserver..."
exec airflow webserver
