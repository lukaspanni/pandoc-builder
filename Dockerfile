FROM pandoc/latex:latest-ubuntu

ARG UBUNTU_VERSION=24.04
ARG PYTHON_VERSION=3.12

RUN wget -q https://packages.microsoft.com/config/ubuntu/${UBUNTU_VERSION}/packages-microsoft-prod.deb && \
  dpkg -i packages-microsoft-prod.deb && \
  apt update && \
  apt install -y powershell python3-pip zip plantuml librsvg2-bin && \
  rm -rf /usr/lib/python${PYTHON_VERSION}/EXTERNALLY-MANAGED && \
  apt clean && \
  rm -rf /var/lib/apt/lists/*

RUN pip3 install pandoc-plantuml-filter
