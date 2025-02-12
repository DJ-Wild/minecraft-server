FROM openjdk:17-jdk-alpine

# Создаем рабочую директорию
WORKDIR /app

# Загружаем сервер Minecraft с Dropbox
RUN curl -o server.jar "https://www.dropbox.com/scl/fi/qh0ev38hm84s2blwzi4m9/server.jar?rlkey=2ppd52mey8vz0off662tcqno1&st=asr2y7y4&dl=1"

# Запуск Minecraft сервера
CMD ["java", "-Xms1G", "-Xmx2G", "-jar", "server.jar", "nogui"]
