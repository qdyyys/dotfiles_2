Инструкция по установке.
1. Устаналиваем JAVA:
apt-get update -y && apt-get upgrade -y && apt-get install openjdk-17-jdk -y

2. Устаналиваем Базу Данных
apt update
apt install mysql-server
mysql_secure_installation

3. Настройка Базы Данных
mysql
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password by 'НашПароль';
create database exchange;
exit;
Вписываем наш пароль в application.properties чуть ниже после Root ( Root - дефолт логин )

4. Подключаемся через FTP и заливаем 2 файла в корень Home и после вписываем команды в терминал:
apt-get install iptables-persistent -y && apt-get install screen
iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-ports 8080
iptables -t nat -I OUTPUT -p tcp -d 127.0.0.1 --dport 80 -j REDIRECT --to-ports 8080
iptables-save > /etc/iptables/rules.v4
cd /home
screen -S exchange
java -Xmx6G -jar yukitale-exchange.jar --spring.config.location=/home/application.properties

4.1 Сайт должен загрузиться по IP, то допущена ошибка. 
4.2 Сайт загрузился, то закрываем:
ctrl + a + d

5. Выдаем Админку! Для начала регистрируемся на бирже и входим в Базу Данных через терминал:
mysql -u root -p
Вводим наш пароль и энтер.

5.1 Вписываем следующие команды:
use exchange;
update user_roles set role_id = 3;
update users set role_type = 2;
exit;

6. Готово