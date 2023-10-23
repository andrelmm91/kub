FROM node:14

WORKDIR /app

## first dot dell docker all folders and subfolders in the same level as dockerfile is will be installed.
## it is the path iinsiide the image where it will be installed in the container
COPY package.json /app

RUN npm install

COPY . /app

EXPOSE 80

CMD [ "node", "server.js" ]
