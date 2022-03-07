FROM ubuntu:latest

RUN mkdir /terminal

WORKDIR /terminal


RUN apt update && apt upgrade -y

RUN apt install git wget rclone aria2c curl p7zip-full p7zip-rar unzip zip golang python3 python3-pip -y

RUN go install github.com/skanehira/rtty@latest

COPY . .

CMD ["rtty run zsh -p 8080 -v --font "Cica Regular" --font-size 20"]
