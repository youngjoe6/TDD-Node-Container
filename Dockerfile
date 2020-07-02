FROM node:10.16.1-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY ./data/countryCurrencyMetadata.csv swagger.yaml ./

COPY src ./src

EXPOSE 2020

CMD ["npm", "start"]

