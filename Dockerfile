FROM python:3.11-slim

WORKDIR /app

RUN apt-get update && apt-get install -y curl && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app/ app/
COPY app/main.py .

EXPOSE 5000

CMD ["python", "main.py"]
