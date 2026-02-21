FROM node:22-alpine

WORKDIR /app

# Нужны для better-sqlite3 и bcrypt
RUN apk add --no-cache python3 make g++

COPY package*.json ./
RUN npm install --omit=dev

COPY . .

ENV NODE_ENV=production
EXPOSE 3000

CMD ["npm","run","start"]