FROM node:alpine

#CREATION APP DIRECTORY

WORKDIR /APP

#COPY
COPY package*.JSON/package-lock.json parkings.json ./


#RUN NPM
RUN npm install

#BUNDLE APP SOURCE 

COPY . ./

#RUN SERVER
EXPOSE 3000
CMD ["NODE", "INDEX.JS"]