FROM coqui/tts:latest

# Expose HTTP server port
EXPOSE 5002

# Run TTS HTTP server
CMD ["--http"]
