FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy all other source code
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Start the application
CMD ["node", "src/server.js"]
