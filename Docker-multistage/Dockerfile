#Build stage
FROM node:18 AS builder
WORKDIR /app
#COPY source code
COPY . .
#Build the application
RUN npm install
#make sure package.json has "build" script
RUN npm run build

#Production stage with nginx
FROM nginx:alpine
#COPY built files from builder stage
COPY --from=builder /app/build /usr/share/nginx/html

# Copy custom nginx config (optional)
# COPY nginx.conf /etc/nginx/nginx.conf

#EXPOSY port 80
EXPOSE 80

#start ngx
CMD ["nginx", "-g", "daemon off;"]