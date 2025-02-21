# Use official Python image as base
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the Flask app to the container directory (/app)
COPY app.py .

# Install Flask
RUN pip install -r requirements.txt

# Expose port 5000 for Flask
EXPOSE 5000

# Run the app with Python command
CMD ["python", "app.py"]
