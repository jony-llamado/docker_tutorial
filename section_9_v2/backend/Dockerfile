FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 81

ENV MONGODB_USERNAME=root
ENV MONGODB_PASSWORD=secret
ENV MONGODB_URL=mongodb

CMD ["npm", "start"]