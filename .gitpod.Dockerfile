FROM gitpod/workspace-base:latest


RUN sudo apt-get update && \
  sudo apt-get install -y \
  curl \
  apt-transport-https \
  conntrack \
  socat \
  iptables \
  crictl \
  ebtables \
  ethtool

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
  chmod +x ./kubectl && \
  sudo mv ./kubectl /usr/local/bin/kubectl && \
  mkdir ~/.kube

RUN echo "Instalando Minikube..." && \
  curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && \
  chmod +x minikube && \
  sudo mv minikube /usr/local/bin/

RUN echo "Verificando versões instaladas:" && \
  kubectl version --client || echo "Erro ao verificar kubectl" && \
  minikube version || echo "Erro ao verificar Minikube"