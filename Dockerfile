FROM openjdk:23-alpine

# Устанавливаем curl с помощью apk (для Alpine)
RUN apk add --no-cache curl

# Создаем рабочую директорию
WORKDIR /app

# Загружаем сервер Minecraft
RUN curl -o server.jar "https://piston-data.mojang.com/v1/objects/59353fb40c36d304f2035d51e7d6e6baa98dc05c/server.jar"

# Проверяем версию Java
RUN java -version

# Запуск Minecraft сервера
CMD ["java", "-Xms1G", "-Xmx2G", "-jar", "server.jar", "nogui"]
