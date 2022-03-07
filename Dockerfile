FROM ubuntu:latest


ENV TZ="Asia/Dhaka"
ENV DEBIAN_FRONTEND=noninteractive


RUN mkdir /terminal

WORKDIR /terminal


RUN apt update && apt upgrade -y

COPY railwayfck.sh

RUN railwayfck.sh

RUN go install github.com/skanehira/rtty@latest

COPY . .

CMD ["rtty run zsh -p 8080 -v --font "Cica Regular" --font-size 20"]
