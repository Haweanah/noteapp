# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install required Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask will run on
EXPOSE 8000

# Define environment variable for Flask app
ENV FLASK_APP=main.py

# Run the application
CMD ["flask", "run", "--host=0.0.0.0"]
