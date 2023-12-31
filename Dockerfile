# Use the official Python image as the base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required packages from requirements.txt
RUN pip install -r requirements.txt

# Expose the port on which your Flask app will run
EXPOSE $80

# Set the environment variable to tell Flask the app.py file to run
ENV FLASK_APP=app.py

# Run the Flask development server
CMD ["python3", "app.py"]
