const { PrismaClient } = require("@prisma/client");
const prisma = new PrismaClient();

exports.defineClient = async (req, res) => {
  try {
    const { name, projectName } = req.body;

    if (!name || !projectName) {
      return res.status(400).json({ error: "name and projectName are required" });
    }

    console.log("🔹 Received Request:", { name, projectName });

    let client = await prisma.client.findFirst({
      where: { project: projectName }
    });

    if (!client) {
      client = await prisma.client.create({
        data: { name, project: projectName }
      });
    }

    return res.json({ message: "Client defined successfully", client });
  } catch (error) {
    console.error("❌ Error in defineClient:", error);
    res.status(500).json({ error: error.message || "Internal server error" });
  }
};
