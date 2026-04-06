FROM node:22-alpine

WORKDIR /app

COPY /backend/package*.json ./backend

WORKDIR /app/backend

RUN npm install

WORKDIR /app

COPY . .

EXPOSE 5000

CMD ["node","backend/app.js"]