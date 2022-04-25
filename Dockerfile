FROM node:16-alpine

RUN adduser -D static

USER static

WORKDIR /app

COPY ./package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
