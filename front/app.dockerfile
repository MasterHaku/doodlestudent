
FROM node:20-alpine AS build
WORKDIR /doodlestudent
COPY doodlestudent/front/package*.json ./
RUN npm ci
COPY doodlestudent/front .
RUN npm run build

FROM nginx:alpine
RUN rm /etc/nginx/conf.d/default.conf
COPY --from=build /doodlestudent/dist/tlcfront/ /usr/share/nginx/html
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]