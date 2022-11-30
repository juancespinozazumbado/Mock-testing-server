# syntax=docker/dockerfile:1
FROM node:16.13.2
#Set ENV varianble


#Set working Directory
WORKDIR /hotel_app
#Copy the pakages from npm
COPY ["package.json", "package-lock.json*", "./"]

#Run the npm commands 
RUN npm install 
 
# Copy everything in current /app directory 
COPY . .
# sratr the server 
CMD [ "node", "server.js" ]
