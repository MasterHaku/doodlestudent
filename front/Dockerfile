# First stage to build and compile the application
FROM node:20-alpine AS build
WORKDIR /doodlestudent/front
COPY ./package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# Stage 2 to deploy the application on the port 80 using nginx
FROM nginx:alpine
RUN rm /etc/nginx/conf.d/default.conf
COPY --from=build /doodlestudent/front/dist/tlcfront/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]