FROM node:16-alpine
WORKDIR /app
ENV PATH=$PATH:/app/node_modules/.bin
COPY package*.json .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "run", "start"]