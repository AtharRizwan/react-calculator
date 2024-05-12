FROM node:18.20.2-alpine

# Set the working directory
WORKDIR /app

# Copy the source code
COPY src /app/src
COPY public /app/public
COPY package*.json /app/

# Install the dependencies  
RUN npm install

# Build the react app
RUN npm run build

# Start the application
CMD npm start
