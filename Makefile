install:
	pip install --upgrade pip
	pip install -r requirements.txt

format:
	black *.py  #Auto format the code

lint:
	pylint --disable=R,C ./CI/hello.py #Check the code quality

test:
	python3 -m pytest -vv --cov=hello ./CI/test_hello.py   #Run the tests

all: install lint test
