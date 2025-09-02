v1 bots
1.  CHANGE BOT TOKEN
2. CHANGE CHAT ID
3. CHANGE DOMAIN NAME
4. CHANGE CHANNEL URL (.subscribe-only-btn, subscribe-btn)
5. CHANGE CHANNEL IMAGE (group.jpg)
6. OPTIONAL (Change lng (showNotification, INDEX.HTML, warn.innerHTML, .wallet__profile-reg), change coin image)
7. Change bot start text (config.json, webhooks.go (https://api.telegram.org/bot%s/sendMessage))

v1 server
1.  sudo apt update
2. sudo apt install rsync neovim
3.  sudo apt install -y golang
4. sudo apt install python3 python3-pip
5. pip3 install motor aiogram
6. sudo apt install -y build-essential curl
7. curl -o- [https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh](https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh) | bash
8. source ~/.bashrc
9. nvm install --lts
10. npm i -g pm2

Mongodb
1. curl -fsSL https://pgp.mongodb.com/server-7.0.asc | sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg --dearmor
2. echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list
3. sudo apt update
4. sudo apt install mongodb-org
5. sudo systemctl start mongod
6. sudo systemctl enable mongod