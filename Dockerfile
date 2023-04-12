FROM python:3.8-slim-bullseye

RUN apt-get update
#RUN apt-get -y install gcc build-essential python-dev

RUN pip install --only-binary=:all: mlflow-skinny==2.2.2 pymysql==1.0.3 boto3==1.26.111 sqlalchemy alembic sqlparse flask pandas && \
    mkdir /mlflow/

EXPOSE 5000

#CMD mlflow server \
#    --host 0.0.0.0 \
#    --port 5000 \
#    --default-artifact-root ${BUCKET} \
#    --backend-store-uri mysql+pymysql://${USERNAME}:${PASSWORD}@${HOST}:${PORT}/${DATABASE}

# basic command for running locally.  Replace with commands like above to point to other locations
CMD ["mlflow", "server", "--host", "0.0.0.0"]
