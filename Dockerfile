# Select node version and set working directory
FROM node:latest
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app
RUN npm install

# Bundle app source
COPY . /usr/src/app

# Expose public port and run npm command
EXPOSE 3000
CMD ["npm", "start"]