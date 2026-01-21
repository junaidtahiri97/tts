FROM ghcr.io/coqui-ai/tts-cpu:latest

EXPOSE 5002

CMD ["tts-server", "--model_name", "tts_models/en/vctk/vits", "--host", "0.0.0.0", "--port", "5002"]
