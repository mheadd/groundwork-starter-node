FROM node:18.16.1-slim

# Install app dependencies.
COPY package.json /src/package.json
WORKDIR /src
RUN npm install

# Bundle app source.
COPY . /src

# Expose port and start app.
EXPOSE  3000
CMD ["npm", "start"]