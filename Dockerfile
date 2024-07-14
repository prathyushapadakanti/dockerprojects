# Use Python 3.11 as the base image
FROM python:3.11

# Install git and other dependencies
RUN apt-get update && apt-get install -y git \
    && apt-get install -y curl

# Set environment variables
ENV APP_HOME=/app/applications

# Set the working directory inside the container
WORKDIR /app

# Clone a git repository (replace with your repository)
RUN git clone https://github.com/prathyushapadakanti/dockerprojects.git

# Set the working directory to the cloned repository
WORKDIR ${APP_HOME}

# Install Python dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copy source code into the container (if not using git clone)
# COPY . ${APP_HOME}

# Expose the application port (if needed)
EXPOSE 8000

# Default command to run when starting the container
CMD ["python", "calculator.py"]
