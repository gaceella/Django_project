# Use official Python image
FROM python:3.11-slim

# Set working directory inside container
WORKDIR /code

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all code to container
COPY . .

# Run Django server on container start
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

