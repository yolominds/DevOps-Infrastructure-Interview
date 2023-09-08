#!/bin/bash

# Script to generate the Monitoring and Logging interview task repository with Next.js

# Create the main directory for the repo and navigate to it
mkdir monitoring-logging-task
cd monitoring-logging-task

# Initialize a git repository
git init

# Set up the Next.js application
mkdir app
cd app

# Initialize a new Next.js app
npx create-next-app .

# Create an images directory inside public for the logo
mkdir public/images

# Placeholder for the logo (replace this with the actual logo later)
touch public/images/logo.png

cd ..

# Create Dockerfile
cat <<EOL > Dockerfile
FROM node:14

WORKDIR /app

COPY ./app/package.json ./
COPY ./app/package-lock.json ./

RUN npm install

COPY ./app .

RUN npm run build

CMD ["npm", "start"]
EOL

# Create docker-compose file
touch docker-compose.yml

# Create README
touch README.md

# Initial commit
git add .
git commit -m "Initial repository setup for Monitoring and Logging interview task."

echo "Repository structure generated successfully!"
