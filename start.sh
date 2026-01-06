#!/bin/bash

# Start script for Search-Movies Bot

set -e

echo "🎬 Search-Movies Bot - Starting..."
echo "=================================="

# Check if .env exists
if [ ! -f .env ]; then
    echo "⚠️  .env file not found!"
    echo "📋 Copying .env.example to .env..."
    cp .env.example .env
    echo "✅ Please edit .env with your credentials"
    echo "📝 Run: nano .env"
    exit 1
fi

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed!"
    echo "📥 Install Docker: https://docs.docker.com/get-docker/"
    exit 1
fi

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "❌ Docker Compose is not installed!"
    echo "📥 Install Docker Compose: https://docs.docker.com/compose/install/"
    exit 1
fi

echo ""
echo "🚀 Starting bot with Docker Compose..."
docker-compose up -d

echo ""
echo "✅ Bot is running!"
echo "📊 View logs: docker-compose logs -f bot"
echo "🛑 Stop bot: docker-compose down"
echo ""
