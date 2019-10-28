.PHONY: deps env bootstrap docker_build docker_run

run: deps
	python3 sample_client.py

deps: env
	python3 -m pip install -r requirements.txt

env: bootstrap
	python3 -m venv env

bootstrap:
	python3 -m pip install --user virtualenv

docker_build:
	docker build -t 10krps .

docker_run: docker_build
	docker run -e writeKey -e events 10krps
