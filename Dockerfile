
FROM ghcr.io/coqui-ai/tts-cpu:latest

# Expose port for the HTTP server
EXPOSE 5002

# Run Coqui TTS in HTTP server mode with a default model
CMD ["tts", "--model_name", "tts_models/en/vctk/vits", "--http", "--host", "0.0.0.0", "--port", "5002"]
