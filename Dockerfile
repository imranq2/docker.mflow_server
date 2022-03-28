FROM python:3.8-slim-bullseye

RUN pip install mlflow==1.24.0 pymysql==1.0.2 boto3==1.21.27 && \
    mkdir /mlflow/

EXPOSE 5000

#CMD mlflow server \
#    --host 0.0.0.0 \
#    --port 5000 \
#    --default-artifact-root ${BUCKET} \
#    --backend-store-uri mysql+pymysql://${USERNAME}:${PASSWORD}@${HOST}:${PORT}/${DATABASE}

# basic command for running locally.  Replace with commands like above to point to other locations
CMD ["mlflow", "server", "--host 0.0.0.0"]
