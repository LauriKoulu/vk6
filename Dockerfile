FROM node:8

COPY package*.json ./

RUN npm install

#bundle
COPY . .

# Make port 8080 available to the world outside this container
EXPOSE 8080

CMD [ "npm", "start" ]