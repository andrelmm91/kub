FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

EXPOSE 80

ENV MONGODB_USERNAME=andre
ENV MONGODB_PASSWORD=secret

# it is because nodemon is enable in the package json dependecies
CMD ["npm", "start"]