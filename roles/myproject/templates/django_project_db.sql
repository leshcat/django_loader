CREATE USER myprojectuser@localhost IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON myproject.* TO myprojectuser@localhost;
FLUSH PRIVILEGES;
