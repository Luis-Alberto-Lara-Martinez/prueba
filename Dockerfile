# Etapa 1: Build con Maven + JDK 25
FROM eclipse-temurin:25-jdk AS build
WORKDIR /app

# Copiamos todo el proyecto
COPY . .

# Construimos el JAR sin tests
RUN ./mvnw clean package -DskipTests

# Etapa 2: Runtime con JRE 25 (más ligero)
FROM eclipse-temurin:25-jre
WORKDIR /app

# Copiamos el JAR generado
COPY --from=build /app/target/*.jar app.jar

# Puerto expuesto por Spring Boot
EXPOSE 8080

# Comando de arranque
ENTRYPOINT ["java", "-jar", "app.jar"]

