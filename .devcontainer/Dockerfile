# Use the ubuntu base image
FROM mcr.microsoft.com/devcontainers/base:ubuntu22.04
WORKDIR /workspace

# 依存ライブラリのインストール
RUN apt-get update && apt-get install -y wget curl pkg-config
RUN apt-get update && apt-get install -y libgtk-4-bin libgtk-4-common libgtk-3-dev libwebkit2gtk-4.0-dev libglib2.0-dev xvfb

# Start Xvfb
ENV DISPLAY=:99

# golangのインストール
RUN wget https://go.dev/dl/go1.22.3.linux-arm64.tar.gz
RUN tar -C /usr/local -xzf go1.22.3.linux-arm64.tar.gz
ENV PATH /usr/local/go/bin:$PATH
ENV PATH /go/bin:$PATH
ENV GOPATH /go

# goplsのインストール
RUN go install -v golang.org/x/tools/gopls@latest

# nodejsのインストール
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
RUN apt-get install -y nodejs

# wailsのインストール
RUN go install github.com/wailsapp/wails/v2/cmd/wails@v2.8.2

CMD [ "/bin/sh" ]