FROM node:latest

MAINTAINER sumate.btf@gmail.com
#update 
RUN apt-get update && apt-get dist-upgrade -y \
    && rm -rf /var/lib/apt/lists/*

COPY . /apps/
WORKDIR /apps/
RUN npm install
EXPOSE 5555
#run command
CMD ["npm","start"]
