# FROM significa qual que sera a imagem base para a construcao da imagem
FROM tensorflow/tensorflow:2.11.0-gpu
# RUN serve para executar os comandos APENAS durante a criacao da imagem, precisa-se fazer isso para que instale as dependencias e pacotes que sera utilizado no projeto, porque ele nao vem com a imagem acima
# Depende muito do ambiente e linguagem que esta trabalhondo, no caso estamos usando python, por isso que utilizamos o terminal e o pip install para instalar as dependencias necessarias
# Modificar conforme a necessidade a linha de comando RUN
RUN pip install pandas numpy natsort fastparquet Pillow scipy matplotlib

# Create a user named 'willian' with the same UID and GID as the host user
# Create a user named 'willian' with UID 1000

RUN useradd -ms /bin/bash willian -u 1000