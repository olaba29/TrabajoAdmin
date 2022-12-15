# Usar como imagen base la ultima version de la imagen ubuntu
FROM ubuntu:latest

#Copiar el script al directorio del contenedor (basado en la imagen)
COPY script.sh /

# Ejecutar comandos que afectan al contenedor:
RUN apt -qq update && apt -qq -y install curl # Instalamos curl
RUN chmod +x /script.sh # Hacemos ejecutable el script mediante chmod

# Ejecutar script
ENTRYPOINT ["/script.sh"]
