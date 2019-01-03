FROM node:slim

RUN yarn config set registry https://registry.npm.taobao.org

# Create app directory
WORKDIR /usr/src/app

# add npm package
COPY package.json yarn.lock ./

# install
RUN yarn

# copy code
COPY . .

# build
RUN yarn run ci

ENV PORT=80

EXPOSE 80

CMD yarn start