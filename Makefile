install:
		pip install --upgrade pip &&\
			pip install -r requirements.txt

test: 
		python -m pytest -vv test_.py
		#python -m pytest --nbval Predictive_Mortality_Risk_Model.ipynb

format:
		black *.ipynb
		black *.py
lint:
		pylint --disable=R,C test_.py
		#jupylint Predictive_Mortality_Risk_Model.ipynb


all: install lint test format