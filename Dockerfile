FROM node:8

COPY package*.json ./

RUN npm install

#bundle
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

CMD ["npm","start"]