C:\xampp\mysql\bin>mysql -u root -h localhost -p

CREATE DATABASE accesoadatos;

CREATE USER 'accesoadatos'@'localhost' IDENTIFIED BY 'accesoadatos';

GRANT ALL PRIVILEGES ON accesoadatos.* TO 'accesoadatos'@'localhost';

FLUSH PRIVILEGES;