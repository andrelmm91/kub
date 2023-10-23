# we want to run node v14
FROM node:14

# copy dependencies
COPY package.json .

# run dependencies
RUN npm install

# copy the rest of the code
COPY . .

# enable the app on the port 3000, as detailed in the app
EXPOSE 3000

# execute node with the app file
CMD [ "node", "app.mjs" ]