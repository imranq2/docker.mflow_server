build:
	docker image rm imranq2/mlflow_server:local || echo "no image"
	docker build -t imranq2/mlflow_server:local .

shell:
	docker run -it imranq2/mlflow_server:local sh

