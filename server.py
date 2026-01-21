from flask import Flask, request, send_file
from TTS.api import TTS

app = Flask(__name__)

# Load a TTS model once
tts = TTS(model_name="tts_models/en/vctk/vits", progress_bar=False, gpu=False)

@app.route("/tts", methods=["POST"])
def generate_tts():
    data = request.json
    text = data.get("text", "")
    output_file = "output.wav"
    tts.tts_to_file(text=text, file_path=output_file)
    return send_file(output_file, mimetype="audio/wav")

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5002)
