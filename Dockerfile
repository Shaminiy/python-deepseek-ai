FROM python:3.10-slim

# Set workdir
WORKDIR /app

# Copy code
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r inference/requirements.txt

EXPOSE 8000

CMD ["python", "main.py"]
