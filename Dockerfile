FROM node:latest

MAINTAINER Jing Luo "susanna8930@163.com"

RUN npm install hexo-cli -g

RUN hexo init myblog

WORKDIR /myblog

RUN npm install

EXPOSE 4000

CMD hexo server

VOLUME /myblog
