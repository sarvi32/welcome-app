# Use python 3.9.18 slim base image
FROM python:3.9.18-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install Flask and any other dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8090 to the outside world
EXPOSE 8090

# Run app.py when the container launches
CMD ["python", "app.py"]