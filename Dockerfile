FROM node:6.0

MAINTAINER n.sarote@gmail.com
#update
#SHELL ["/bin/bash", "-c"]
#RUN apt-get update && apt-get dist-upgrade -y \
#    && rm -rf /var/lib/apt/lists/*

COPY . /apps/
WORKDIR /apps/

RUN mv ./node_modules ./node_modules.tmp \
  && mv ./node_modules.tmp ./node_modules \
  && npm install 
#RUN npm install
EXPOSE 3000
#run command
CMD ["npm","start"]
