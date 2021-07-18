const express = require('express');
const connectDB = require('./config/db');

app = express();

connectDB();

app.use(express.json({ extended: false }));

app.get('/', (req, res) => res.send('API Running'));

app.use('/api/users', require('./routes/api/users'));
app.use('/api/auth', require('./routes/api/auth'));
app.use('/api/profile', require('./routes/api/profile'));
app.use('/api/posts', require('./routes/api/posts'));

const API_PORT = process.env.API_PORT || 5000;

app.listen(API_PORT, () =>
  console.log(`[App] server started on port ${API_PORT}`)
);
