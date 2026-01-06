# 🎬 Search-Movies Bot

Advanced Telegram bot for searching movies and TV shows with MongoDB database and Docker support.

## ✨ Features

- 🔍 Advanced search for movies and series
- 📊 Automatic indexing system for channels
- 🎨 Text to fancy fonts converter
- 🗣️ Text-to-Speech (TTS) support
- 📤 Pastebin integration
- ⚙️ Customizable settings per group
- 📢 Broadcast system for admins
- 🔐 Advanced permissions system

---

## 🚀 Quick Start with Docker

### 1. Clone the repository
```bash
git clone https://github.com/Tj-Bots/Search-Movies.git
cd Search-Movies
```

### 2. Setup environment variables
```bash
cp .env.example .env
nano .env  # Edit with your credentials
```

### 3. Start the bot
```bash
./start.sh
```

That's it! Bot is running 🎉

---

## 🔧 Configuration

Edit the `.env` file with your values:

```env
# Get from https://my.telegram.org
API_ID=12345678
API_HASH=your_api_hash

# Get from @BotFather
BOT_TOKEN=your_bot_token

# MongoDB (leave as is for Docker)
MONGO_URI=mongodb://mongodb:27017

# Your Telegram ID (get from @userinfobot)
ADMINS=123456789

# Optional: Log channel ID
LOG_CHANNEL=-1001234567890
```

See [.env.example](.env.example) for detailed explanations of each variable.

---

## 💻 Alternative Installation Methods

### Without Docker (Local Python)

```bash
# Install Python 3.11+
sudo apt update && sudo apt install python3.11 python3-pip -y

# Clone and install dependencies
git clone https://github.com/Tj-Bots/Search-Movies.git
cd Search-Movies
pip3 install -r requirements.txt

# Setup environment
cp .env.example .env
nano .env
# Change MONGO_URI to: mongodb://localhost:27017

# Install MongoDB (or use MongoDB Atlas)
# https://www.mongodb.com/cloud/atlas

# Run the bot
python3 bot.py
```

### Deploy to Cloud Platform

#### Railway.app (Recommended)
1. Fork this repository
2. Create new project on [Railway](https://railway.app)
3. Connect your GitHub repo
4. Add MongoDB database
5. Set environment variables in Railway dashboard
6. Deploy!

#### CapRover
```bash
# Install CapRover CLI
npm install -g caprover

# Deploy
caprover deploy
```

#### Render.com
1. Create new "Web Service" on [Render](https://render.com)
2. Select "Docker" as environment
3. Connect repository
4. Add environment variables
5. Create MongoDB instance
6. Deploy

---

## 🤖 Bot Commands

### User Commands
- `/start` - Start the bot
- `/help` - Help menu
- `/settings` - Group settings (admin only)

### Admin Commands
- `/index [link] [start] [end]` - Index files from channel
- `/newindex [channel_id]` - Auto-track new channel
- `/channels` - List tracked channels
- `/clean` - Clean database
- `/stats` - Bot statistics
- `/broadcast` - Broadcast to users
- `/broadcast_groups` - Broadcast to groups
- `/restart` - Restart bot

### Extra Tools
- `/font [text]` - Convert text to fancy fonts
- `/paste [text]` - Upload to Pastebin
- `/tts` - Text-to-speech
- `/share [text]` - Create share link

---

## 📁 Project Structure

```
Search-Movies/
├── bot.py              # Main bot file
├── config.py           # Configuration
├── database.py         # MongoDB handler
├── requirements.txt    # Python dependencies
├── Dockerfile          # Docker configuration
├── docker-compose.yml  # Docker services
├── .env.example        # Environment template
├── start.sh           # Start script
├── stop.sh            # Stop script
└── Tj_Bots/           # Bot modules
    ├── start.py       # Start command
    ├── index.py       # Indexing system
    ├── search.py      # Search engine
    ├── settings.py    # Settings handler
    ├── broadcast.py   # Broadcasting
    ├── clean.py       # Database cleanup
    ├── stats.py       # Statistics
    └── extra/         # Extra features
        ├── font.py    # Font converter
        ├── paste.py   # Pastebin
        └── tts.py     # Text-to-speech
```

---

## 🐳 Docker Commands

```bash
# Start bot
./start.sh
# or: docker-compose up -d

# Stop bot
./stop.sh
# or: docker-compose down

# View logs
docker-compose logs -f bot

# Restart bot
docker-compose restart bot

# Update and rebuild
git pull && docker-compose up -d --build

# Remove all (including database)
docker-compose down -v
```

---

## 🔍 Troubleshooting

### Bot doesn't start
- Check `.env` file exists and has correct values
- Verify MongoDB is accessible
- Check logs: `docker-compose logs -f bot`

### Bot doesn't respond
- Verify BOT_TOKEN is correct
- Make sure your user ID is in ADMINS
- Check bot is running: `docker-compose ps`

### MongoDB connection error
- **Docker Compose**: Use `mongodb://mongodb:27017`
- **Local**: Use `mongodb://localhost:27017`
- **Atlas**: Use connection string from MongoDB Atlas

### Permission denied on scripts
```bash
chmod +x start.sh stop.sh
```

---

## 👨‍💻 Credits

- **Developer**: [@BOSS1480](https://t.me/BOSS1480)
- **Language**: Python
- **Framework**: [Pyrogram](https://docs.pyrogram.org/)
- **Database**: MongoDB

---

## 📝 License

This project is released for free. Please don't sell it!

---

## 💬 Support

For help or questions, contact [@BOSS1480](https://t.me/BOSS1480)

---

**Made with ❤️ by the Telegram community**
