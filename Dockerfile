# Use an official Node.js runtime as a parent image
FROM node:16-alpine

# Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package-lock.json to the work directory
COPY package*.json ./

# Install the application dependencies
RUN npm ci --only=production

# Copy the rest of your app's source code from your host to your image filesystem.
COPY . .

# Build the Next.js app
RUN npm run build

# Expose port 3000 to have it mapped by the docker daemon
EXPOSE 3000

# Start the Next.js app
CMD ["npm", "start"]
