# Alteramos para uma imagem que existe e é mantida
FROM eclipse-temurin:17-jre-jammy

# Criamos um diretório para a aplicação (boa prática)
WORKDIR /app

# Copiamos o arquivo do diretório target para dentro da imagem
COPY target/cardapio-0.0.1-SNAPSHOT.jar app.jar

# Corrigimos o comando para apontar para o local certo
CMD ["java", "-jar", "app.jar"]