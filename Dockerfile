# Use Node.js LTS
FROM node:20

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install deps
COPY package*.json ./
RUN npm ci --only=production

# Copy source code
COPY . .

# Expose port
EXPOSE 3000

# Start app
CMD ["npm", "start"]
