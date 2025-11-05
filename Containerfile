# 1- Usar la imagen oficial de Ollama como base
FROM docker.io/ollama/ollama:latest

# 2- Copiar nuestro Modelfile
COPY Modelfile /

# 3- Iniciar el servidor, crear el modelo y parar el servidor
#    (Solución al error "server not responding")
RUN sh -c "ollama serve & \
    sleep 5 && \
    ollama create deepseek-proyecto -f /Modelfile"

# 4- Limpiar el Modelfile, ya no se necesita
RUN rm /Modelfile
