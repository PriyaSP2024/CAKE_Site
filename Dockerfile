FROM node:18-alpine AS build
WORKDIR /app
COPY . .
RUN npm install && npm run build
 

FROM node:18-alpine As build
RUN npm install -g serve
WORKDIR /app
COPY .. --from=build /app/build ./build
EXPOSE 80
CMD ["serve", "-s","build","-I","8080"]
 
 
