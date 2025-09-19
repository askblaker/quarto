FROM python:3.10

WORKDIR /workdir

RUN wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.8.24/quarto-1.8.24-linux-amd64.deb

RUN dpkg -i ./quarto-1.8.24-linux-amd64.deb

RUN wget https://yihui.org/tinytex/install-bin-unix.sh

RUN chmod +x ./install-bin-unix.sh

RUN TINYTEX_INSTALLER=TinyTeX-2 ./install-bin-unix.sh

RUN apt-get update

RUN apt-get install chromium -y

RUN quarto install chromium --no-prompt

RUN quarto --version