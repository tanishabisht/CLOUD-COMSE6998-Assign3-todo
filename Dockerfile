# Use an official Python runtime as a parent image
FROM --platform=linux/amd64 python:3.8-slim
# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Set environment variables
ENV FLASK_ENV development
ENV PORT 5000
ENV MONGO_HOST=mongodb
ENV MONGO_PORT=27017

# Make port 5000 available to the world outside this container
EXPOSE $PORT

# Run app.py when the container launches
CMD ["python", "app.py"]