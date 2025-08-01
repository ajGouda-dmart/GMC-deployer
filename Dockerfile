# Use Node.js base image
FROM node:20.18.2

# Set working directory
WORKDIR /app

# Copy app files
COPY package*.json ./
RUN npm install
COPY . .

# Start app
CMD ["npm", "start"]

# Tell GCP which port to expose
EXPOSE 8080