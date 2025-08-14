#BUILDER STAGE
FROM alpine AS builder
WORKDIR /app
#COPY source code
COPY . .
#stage2
FROM nginx:alpine
COPY --from=builder /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]