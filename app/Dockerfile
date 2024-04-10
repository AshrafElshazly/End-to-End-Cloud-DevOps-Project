FROM node AS build

WORKDIR /usr/src/app
COPY package*.json ./

RUN npm ci --only=production

COPY . .

FROM node:alpine AS production

WORKDIR /usr/src/app

COPY --from=build /usr/src/app .

EXPOSE 3000

CMD ["node", "app.js"]