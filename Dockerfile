# Use the official Python image as a base image
FROM python:3.7-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY requirements.txt .

# Install the dependencies
RUN pip install  -r requirements.txt

# Expose port 5000 for the Flask app
COPY . .

# Command to run the Flask app
CMD ["python", "app.py"]
