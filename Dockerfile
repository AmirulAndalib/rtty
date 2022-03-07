FROM ubuntu:latest

RUN mkdir /terminal

WORKDIR /terminal


RUN apt update && apt upgrade -y

RUN copy railwayfck.sh

RUN railwayfck.sh

RUN go install github.com/skanehira/rtty@latest

COPY . .

CMD ["rtty run zsh -p 8080 -v --font "Cica Regular" --font-size 20"]
