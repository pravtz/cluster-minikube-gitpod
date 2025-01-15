#!/bin/bash
set -e

# Iniciar Minikube com o driver none para compatibilidade com Gitpod
minikube start --driver=none

# Configurar kubectl para usar o contexto do Minikube
kubectl config use-context minikube

# Verificar status do cluster
minikube status
