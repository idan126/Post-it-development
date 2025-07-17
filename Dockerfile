# This is an example ori. it has nothing to do with out project rn

# Use an official Node.js image
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your app files
COPY . .

# Expose the port your app runs on (change if needed)
EXPOSE 3000

# Command to run your app
CMD ["node", "app.js"]
