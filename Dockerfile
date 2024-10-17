FROM python:3.10

WORKDIR /workdir

RUN wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.3.336/quarto-1.3.336-linux-amd64.deb

RUN dpkg -i ./quarto-1.3.336-linux-amd64.deb

RUN wget https://yihui.org/tinytex/install-bin-unix.sh

RUN chmod +x ./install-bin-unix.sh

RUN TINYTEX_INSTALLER=TinyTeX-2 ./install-bin-unix.sh

RUN apt-get update

RUN apt-get install chromium -y

RUN quarto tools install

RUN quarto --version