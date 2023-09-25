FROM python:3.11.5-slim-bookworm

RUN apt-get update
#RUN apt-get -y install gcc build-essential python-dev

RUN pip install --only-binary=:all: mlflow-skinny==2.6.0
RUN pip install --no-deps --only-binary=:all: mlflow==2.6.0
RUN pip install --only-binary=:all: pymysql[rsa]==1.1.0 boto3==1.28.44 sqlalchemy alembic sqlparse flask pandas gunicorn querystring_parser

RUN mkdir /mlflow/

EXPOSE 5000

#CMD mlflow server \
#    --host 0.0.0.0 \
#    --port 5000 \
#    --default-artifact-root ${BUCKET} \
#    --backend-store-uri mysql+pymysql://${USERNAME}:${PASSWORD}@${HOST}:${PORT}/${DATABASE}

# basic command for running locally.  Replace with commands like above to point to other locations
CMD ["mlflow", "server", "--host", "0.0.0.0"]
