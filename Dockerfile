FROM openjdk:17-jdk-alpine

# Устанавливаем curl
RUN apk add --no-cache curl

# Создаем рабочую директорию
WORKDIR /app

# Загружаем сервер Minecraft с Dropbox
RUN curl -o server.jar "https://piston-data.mojang.com/v1/objects/59353fb40c36d304f2035d51e7d6e6baa98dc05c/server.jar"

# Запуск Minecraft сервера
CMD ["java", "-Xms1G", "-Xmx2G", "-jar", "server.jar", "nogui"]
