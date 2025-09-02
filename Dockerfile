# Use Node 18 as base
FROM node:18

# Create app directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install --only=production

# Copy app source
COPY . .

# Expose the port
EXPOSE 8080

# Start node app
CMD ["node", "server.js"]
