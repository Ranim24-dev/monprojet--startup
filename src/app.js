const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('🚀 Hello CI/CD sécurisé avec GitHub Actions !');
});

app.listen(3000, () => console.log('✅ Serveur démarré sur http://localhost:3000'));

