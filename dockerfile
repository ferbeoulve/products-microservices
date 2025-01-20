FROM node:22.12-alpine3.19

WORKDIR /usr/src/app

COPY package.json ./

COPY package-lock.json ./

RUN npm install

COPY . .

# //Cuando la base de datos ya existe
RUN npx prisma generate

EXPOSE 3000
