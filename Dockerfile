FROM pandoc/latex:latest-ubuntu


RUN wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb && \
  dpkg -i packages-microsoft-prod.deb && \
  apt update && \
  apt install -y powershell python3-pip zip plantuml librsvg2-bin

RUN pip3 install pandoc-plantuml-filter 