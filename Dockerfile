FROM openjdk:21-slim

# Устанавливаем curl
RUN apt-get update && apt-get install -y curl

# Создаем рабочую директорию
WORKDIR /app

# Скачиваем Minecraft server.jar
RUN curl -L -o server.jar "https://piston-data.mojang.com/v1/objects/59353fb40c36d304f2035d51e7d6e6baa98dc05c/server.jar"

# Принимаем лицензию EULA
RUN echo "eula=true" > eula.txt

# Запускаем сервер Minecraft с нужными параметрами
CMD ["java", "--add-modules", "jdk.incubator.vector", "-Xms2G", "-Xmx4G", "-jar", "server.jar", "nogui"]
