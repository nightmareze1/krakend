FROM node:12.6.0

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN yarn

COPY . /usr/src/app

ENV PORT 80
EXPOSE 80

CMD ["npm", "start"]
