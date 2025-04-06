const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();


exports.trackAction = async (req, res) => {
  try {
    const { clientId, key, value } = req.body;


    if (!clientId || !key || !value) {
      return res.status(400).json({ error: "Missing required fields" });
    }

    const action = await prisma.action.create({
      data: {
        clientId: clientId,
        key: key,
        value: value,
      },
    });

    return res.json({ message: "Action tracked successfully", action });
  } catch (error) {
    console.error(error);
    return res.status(500).json({ error: "Internal server error" });
  }
};
