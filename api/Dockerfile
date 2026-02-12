# ÉTAPE 1 : Compilation
FROM registry.access.redhat.com/ubi8/openjdk-17:1.16 AS build
USER root
WORKDIR /code

# On copie le wrapper
COPY .mvn/ .mvn/
COPY mvnw .

# --- CORRECTION ICI ---
# 1. On supprime les retours chariots Windows (\r) 
# 2. On rend le script exécutable
RUN tr -d '\r' < mvnw > mvnw.fixed && \
    mv mvnw.fixed mvnw && \
    chmod +x mvnw
# ----------------------

COPY pom.xml .

# On télécharge les dépendances (cette couche sera mise en cache)
RUN ./mvnw dependency:go-offline

# On copie les sources et on compile
COPY src/ src/
RUN ./mvnw package -DskipTests