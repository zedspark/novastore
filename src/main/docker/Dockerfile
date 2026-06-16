# =========================
# Stage 1: Build
# =========================
FROM maven:3.9.8-eclipse-temurin-21 AS builder

WORKDIR /app

# اول فقط pom.xml را کپی می‌کنیم برای cache بهتر
COPY pom.xml .

# اگر mvnw داری بهتره wrapper هم کپی بشه
# COPY .mvn .mvn
# COPY mvnw .

# dependency cache
RUN mvn -B dependency:go-offline

# حالا سورس را کپی می‌کنیم
COPY src ./src

# build
RUN mvn -B clean package -DskipTests

# =========================
# Stage 2: Runtime
# =========================
FROM eclipse-temurin:21-jre

WORKDIR /app

# برای امنیت بهتر یک user غیر root
RUN addgroup --system spring && adduser --system spring --ingroup spring
USER spring:spring

COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]
