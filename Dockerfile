# Temel imaj
FROM openjdk:17-jdk-slim

# Uygulama jar dosyasını ekle
COPY target/finalProject-0.0.1-SNAPSHOT.jar app.jar

# Uygulamayı başlat
ENTRYPOINT ["java", "-jar", "/app.jar"] 