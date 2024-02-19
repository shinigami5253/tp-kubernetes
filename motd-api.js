const express = require('express');
const app = express();
const port = process.env.APP_PORT || 5555; // Port par défaut : 5555
const message = process.env.MESSAGE || "Bonjour, bienvenue sur notre service MOTD!";

app.get('/', (req, res) => {
  res.json({ message: message });
});

app.listen(port, () => {
  console.log(`Le microservice MOTD-API est en cours d'exécution sur le port ${port}`);
});
