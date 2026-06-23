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

# --- CÁC LỆNH CHO CD (Chạy trực tiếp trên máy EC2) ---
deploy:
	# 1. Kéo code mới nhất từ GitHub
	git pull origin main
	
	# 2. Cài đặt các thư viện mới (nếu có bổ sung trong requirements.txt)
	make install
	
	# 3. Tìm tiến trình app.py đang chạy và tắt nó (tránh lỗi port in use)
	pkill -f "python3 app.py" || true
	
	# 4. Khởi động lại ứng dụng dưới nền (Background)
	nohup python3 app.py > app.log 2>&1 &
	echo "Ứng dụng đã khởi động lại thành công!"
