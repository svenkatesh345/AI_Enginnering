# Use a lightweight Python base image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Install system dependencies (optional, only if needed for numpy/pandas/scikit-learn)
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Copy only requirements first (better caching)
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Environment variable for Flask
ENV FLASK_APP=app.py

# Expose Flask port
EXPOSE 8000

# Run with Gunicorn (production-ready, fewer resources than Flask dev server)
CMD ["gunicorn", "-w", "2", "-b", "0.0.0.0:8000", "app:app"]
