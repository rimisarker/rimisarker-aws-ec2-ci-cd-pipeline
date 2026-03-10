FROM python:3.9

WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all app code
COPY . .

EXPOSE 5000
CMD ["python", "run.py"]