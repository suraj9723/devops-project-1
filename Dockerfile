# 1. Start with a lightweight official Python image
FROM python:3.11-slim

# 2. Set the working folder inside the container
WORKDIR /app

# 3. Copy requirements first and install them (helps Docker cache layers)
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copy your application code into the container
COPY app.py .

# 5. Document that the app listens on port 5000
EXPOSE 5000

# 6. Command to start the app when the container boots
CMD ["python", "app.py"]
