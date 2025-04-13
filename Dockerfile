# Use the official Python 3.10 image based on Alpine Linux (lightweight and secure)
FROM python:3.10-alpine

# Copy the requirements file into the /tmp directory inside the container
COPY requirements.txt /tmp

# Install the Python dependencies listed in the requirements file
RUN pip install -r /tmp/requirements.txt

# Copy the entire source code directory from the host to /src in the container
COPY ./src /src

# Set the default command to run the Python application
CMD python /src/app.py