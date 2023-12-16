install:
		pip install --upgrade pip &&\
			pip install -r requirements.txt

test: 
		#python -m pytest -vv --cov=myrepolib tests/*.py
		python -m pytest --nbval notebook.ipynb

format:
		black *.ipynb
		black *.py
lint:
		pylint --disable=R,C operation.py test_operation.py

all: install lint test format