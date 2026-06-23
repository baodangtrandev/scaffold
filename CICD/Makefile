# --- CÁC LỆNH CHO CI (Chạy trên GitHub Actions) ---
install:
	pip install --upgrade pip
	pip install -r requirements.txt

format:
	black *.py

lint:
	pylint --disable=R,C app.py

test:
	python3 -m pytest -vv --cov=app test_app.py

deploy:
	git pull origin main
	python3 -m venv .venv
	.venv/bin/pip install --upgrade pip
	.venv/bin/pip install -r requirements.txt
	
	pkill -f "python3 app.py" || true
	pkill -f "python app.py" || true
	
	nohup .venv/bin/python app.py > app.log 2>&1 &
