#!/bin/sh

echo "📦 Checking for PaperMC..."
if [ ! -f paper.jar ]; then
  echo "📦 Downloading PaperMC 1.21.1 Build 39..."
  curl -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.21.1/builds/39/downloads/paper-1.21.1-39.jar
fi

echo "✅ Accepted EULA"
echo "eula=true" > eula.txt

echo "🚀 Starting Minecraft Server..."
chmod +x paper.jar
java -Xmx8192M -Xms8192M -jar paper.jar nogui


