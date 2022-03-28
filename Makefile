build:
	docker image rm imranq2/mlflow_server:local || echo "no image"
	docker build -t imranq2/mlflow_server:local .

shell:
	docker run -it imranq2/mlflow_server:local sh

# bind port 5000 of container to port 5050 on host
up:
	docker run --rm -p 5050:5000 imranq2/mlflow_server:local
