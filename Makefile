install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C --extension-pkg-whitelist='pydantic' main.py --ignore-patterns=test_.*?py *.py logic/*.py

test:
	python -m pytest -vv --cov=main --cov=logic test_*.py

format:
	black *.py logic/*.py

refactor: format lint

deploy:
	#pushes container to ECR (your info will be different!)
	aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 561744971673.dkr.ecr.us-east-1.amazonaws.com
	docker build -t cdfastapi .
	docker tag cdfastapi:latest 561744971673.dkr.ecr.us-east-1.amazonaws.com/cdfastapi:latest
	docker push 561744971673.dkr.ecr.us-east-1.amazonaws.com/cdfastapi:latest

all: install lint test format deploy