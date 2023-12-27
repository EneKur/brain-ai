# This specifies the base image to use for the docker image
FROM python

# this sets the working directory for subsequent commands in the dockerfile
WORKDIR /app

# this copies files fron the local file system to the docker image
COPY . /app

# this runs a command inside the docker container during the build process.
RUN: pip install -r requirements.txt

# this specifies the command to run when the docker container starts.
CMD ["python3", "app.py"]

