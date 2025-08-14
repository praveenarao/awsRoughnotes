FROM node:alpine
WORKDIR /usr/src/app
COPY app.js ./
RUN npm install
COPY . .
CMD ["node", "app.js"]
EXPOSE 8000
CMD ["node", "start"]


# In your Dockerfile, replace:
RUN npm install

# With:
RUN npm ci --only=production

# Remove the old container
docker rm mynodeproj1

# Run with correct port mapping (container:3000 -> host:80)
docker run -d -p 80:3000 --name mynodeproj1 mynpm:v1

# Check what happened when the container tried to start
docker logs mynodeproj1

# For more detailed logs
docker logs --details mynodeproj1
