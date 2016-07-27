FROM node:argon

RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ONBUILD COPY package.json /usr/src/app/
ONBUILD RUN cnpm install
ONBUILD COPY . /usr/src/app

CMD [ "cnpm", "start" ]
