FROM node:latest

ARG WS_SECRET

WORKDIR /usr/src/app

RUN git clone https://github.com/Kerala-Blockchain-Academy/ethstats-server .

RUN npm install && \
    npm install -g grunt-cli && \
    npm install grunt --save-dev

RUN npx grunt pow

ENV WS_SECRET=$WS_SECRET

EXPOSE 3000

CMD ["npm", "start"]