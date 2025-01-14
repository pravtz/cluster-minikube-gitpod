#!/bin/bash
set -e

# Atualizar pacotes e instalar dependências
sudo apt-get update
sudo apt-get install -y curl apt-transport-https virtualbox virtualbox-ext-pack

# Instalar kubectl
curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
sudo mv kubectl /usr/local/bin/

# Instalar Minikube
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo mv minikube /usr/local/bin/
