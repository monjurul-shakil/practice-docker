# FROM alpine:latest

# # WORKDIR /app

# # COPY . .

# RUN apk add --no-cache curl vim git

# # CMD ["python", "test.py"]

# # CMD ["/bin/sh"]

FROM node:18-slim

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000
y6
CMD ["node", "index.js"]
