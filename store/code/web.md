<section>
<h2 style="background: linear-gradient(90deg, #0BDA51, #1e90ff); -webkit-background-clip: text; color: transparent;">
    LINKS
</h2>

<p style="padding: 5px; border-radius: 2px; border-left: 1px solid #0BDA51">
https://roadmap.sh/frontend
</p>

<h1>tech6</h1>
sudo apt install -y golang

sudo apt install -y build-essential curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
source ~/.bashrc
nvm install --lts

sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx

sudo apt install python3 python3-pip
pip3 install motor aiogram

apt install mongodb-mongosh


</section>

<meta property="og:image" content="/logo.png" />
    <meta
      property="og:title"
      content="RustStats.io - Rust Leaderboards and User Stats"
    />
    <meta
      property="og:description"
      content="Rust stats and leaderboards. View anyone's stats for the game of Rust. Kills, deaths, gathered materials and more! Only @ ruststats.io"
    />



<h1>NGINX</h1>
5. Настройте файлы конфигурации

Основной файл конфигурации находится здесь:

/etc/nginx/nginx.conf

Для настройки виртуальных хостов файлы находятся в:

/etc/nginx/sites-available/

Пример:

    Создайте новый файл для вашего сайта:

sudo nvim /etc/nginx/sites-available/my_site

Добавьте минимальную конфигурацию:

server {
    listen 80;
    server_name mysite.com www.mysite.com;
    root /var/www/mysite;

    index index.html index.htm;

    location / {
        try_files $uri $uri/ =404;
    }
}

Активируйте конфигурацию:

sudo ln -s /etc/nginx/sites-available/my_site /etc/nginx/sites-enabled/

Перезагрузите Nginx:

sudo systemctl reload nginx
