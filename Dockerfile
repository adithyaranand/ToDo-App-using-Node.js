# Use the official Node.js image with Alpine Linux as the base image
FROM node:12.2.0-alpine

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install dependencies
RUN npm install

# Run tests
RUN npm run test

# Expose port 8000
EXPOSE 8000

# Command to run the application
CMD ["node", "app.js"]
