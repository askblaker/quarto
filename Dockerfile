FROM python:3.12-trixie

WORKDIR /workdir

# Install Graphviz for diagram rendering (e.g. Quarto's `dot` graphs)
RUN apt-get update \
 && apt-get install -y --no-install-recommends graphviz=2.42.4-3 \
 && rm -rf /var/lib/apt/lists/*

# Using a static file instead to pin this dependency and get a deterministic build
#RUN wget https://yihui.org/tinytex/install-bin-unix.sh

#RUN chmod +x ./install-bin-unix.sh

#RUN TINYTEX_INSTALLER=TinyTeX-2 ./install-bin-unix.sh

# Install Quarto .deb and TinyTeX in one layer, then clean up installers
RUN wget -q https://github.com/askblaker/quarto/releases/download/quarto-1.8.24_tinytex-2-2023-06-22/quarto-1.8.24-linux-amd64.deb \
 && dpkg -i quarto-1.8.24-linux-amd64.deb \
 && quarto --version \
 && wget -q https://github.com/askblaker/quarto/releases/download/quarto-1.8.24_tinytex-2-2023-06-22/TinyTeX-2-2023-06-22.tar.gz \
 && mkdir -m 1777 -p /opt/tex \
 && tar -xf TinyTeX-2-2023-06-22.tar.gz -C /opt/tex/ \
 && ln -s /opt/tex/.TinyTeX/bin/x86_64-linux/* /usr/local/bin/ \
 && tlmgr --version \
 && rm -f quarto-1.8.24-linux-amd64.deb TinyTeX-2-2023-06-22.tar.gz \
 && quarto install chromium --no-prompt
