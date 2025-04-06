const express = require("express");
const bodyParser = require("body-parser");
const cors = require("cors");

const clientRoutes = require("./src/app/routes/clientRoutes");
const actionRoutes = require("./src/app/routes/actionRoutes");

const app = express();

app.use(cors());
app.use(bodyParser.json());
app.get('/', (req, res) => {
    res.send('Hello World!')
  });
app.use("/api/clients", clientRoutes);
app.use("/api/actions", actionRoutes);

app.listen(3000, () => console.log("✅ Server running on port 3000"));
