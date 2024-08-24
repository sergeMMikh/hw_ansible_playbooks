# Используем базовый образ Ubuntu
FROM ubuntu:latest

# Обновляем пакеты и устанавливаем SSH-сервер
RUN apt-get update && apt-get install -y openssh-server

# Создаем директорию для SSH
RUN mkdir /var/run/sshd

# Устанавливаем пароль для root
RUN echo 'root:yourpassword' | chpasswd

# Разрешаем вход по паролю и root-доступ
RUN sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/' /etc/ssh/sshd_config
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Открываем порт 22
EXPOSE 22

# Запускаем SSH-сервер
CMD ["/usr/sbin/sshd", "-D"]
