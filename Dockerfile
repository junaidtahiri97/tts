FROM python:3.11-slim

# Install Coqui TTS
RUN pip install TTS[all]

# Copy server script
COPY server.py /app/server.py
WORKDIR /app

# Expose the port
EXPOSE 5002

# Start the Flask server
CMD ["python", "server.py"]
