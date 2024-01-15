# Use an official Node.js runtime as a base image.
FROM node:14

# Set the working directory in the container.
WORKDIR /app

# Copy package.json and package-lock.json to the working directory.
COPY package*.json ./

# Install all the dependencies for this application.
RUN npm install

# Copy the application source code to the container.
COPY . .

# Expose the port on which the app runs.
EXPOSE 3000

# Specify the command to run on container startup.
CMD ["node", "server.js"]
