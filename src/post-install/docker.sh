#!/bin/bash

# Atualizar pacotes
echo "Atualizando pacotes..."
sudo apt-get update

# Remover versões antigas do Docker, se houver
echo "Removendo versões antigas do Docker..."
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc;
do sudo apt-get remove $pkg;
done

# Instalar pacotes necessários
echo "Instalando os pacotes necessários..."
sudo apt-get install ca-certificates curl

# Adicionar chave GPG do Docker
echo "Adicionando chave GPG do Docker..."
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Adicionar repositório do Docker
echo "Adicionando repositório do Docker..."
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Atualizar pacotes novamente
echo "Atualizando pacotes novamente..."
sudo apt-get update

# Instalar Docker e Docker Compose
echo "Instalando Docker e Docker Compsose..."
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Adicionar grupo docker
echo "Adicionando grupo do docker..."
sudo groupadd docker

# Atualizar os grupos adicionados
echo "Atualizando os grupos adicionados..."
sg docker -c
echo "Grupo atualizado dentro do subshell

# Verificar versões do Docker e Docker Compose
echo "Verificando versão do Docker e Docker Compose..."
docker --version
docker-compose --version

echo "Instalação concluída!"
