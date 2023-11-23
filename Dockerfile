FROM node:6.0

MAINTAINER n.sarote@gmail.com
#update
#RUN apt-get update && apt-get dist-upgrade -y \
#    && rm -rf /var/lib/apt/lists
#RUN apt install curl
#RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
#RUN apt install nodejs

COPY . /apps/
WORKDIR /apps/

#RUN mv /usr/local/lib/node_modules/npm/node_modules /usr/local/lib/node_modules/npm/node_modules.tmp \
#  && mv /usr/local/lib/node_modules/npm/node_modules.tmp /usr/local/lib/node_modules/npm/node_modules \
#  && npm install -g npm@6.0

RUN npm install

EXPOSE 3000
#run command
CMD ["npm","start"]
