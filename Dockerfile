FROM python:3.10-slim

WORKDIR /app

# 패키지 일괄 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# stock_analysis_autogluon 파일 복사
COPY . .

# stock_analysis_autogluon 파일 실행
CMD ["python", "stock_analysis_autogluon.py"]