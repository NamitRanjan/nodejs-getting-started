# Use official Node image

FROM node:18

# Take cooker

WORKDIR /app

# Take Ingredients

COPY package*.json ./

# Install Dependenies

RUN npm install

#copy source code

COPY . .

# Expose app port
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
