# Use Python 3.11 as the base image
FROM python:3.11

# Install git
RUN apt-get update && apt-get install -y git

# Set the working directory inside the container
WORKDIR /app

# Clone a git repository (replace with your repository)
RUN git clone https://github.com/prathyushapadakanti/applications.git

# Set the working directory to the cloned repository
WORKDIR /app/applications
# Optionally, you can add other commands like installing dependencies here
# RUN pip install -r requirements.txt

# Default command to run when starting the container
CMD ["python", "calculator.py"]
