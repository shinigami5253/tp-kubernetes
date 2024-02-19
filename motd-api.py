from flask import Flask, jsonify
import os

app = Flask(__name__)

# Récupérer le message à retourner depuis la variable d'environnement MESSAGE
message = os.environ.get('MESSAGE', 'Bonjour, bienvenue sur notre service MOTD!')

# Récupérer le port d'écoute depuis la variable d'environnement APP_PORT
port = int(os.environ.get('APP_PORT', 5000))  # Port par défaut : 5000

@app.route('/')
def get_motd():
    return jsonify({'message': message})

if __name__ == '__main__':
    app.run(debug=True, host="0.0.0.0", port=port)
