install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C --ignore-patterns=test_.*?py *.py logic/*.py

test:
	python -m pytest -vv --cov=app test_*.py

format:
	black *.py logic/*.py

refactor: format lint

all: install lint test format