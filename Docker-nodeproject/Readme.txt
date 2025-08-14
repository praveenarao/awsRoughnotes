#Readme.txt
Preqrequsites: 
1) install docker
dnf install docker -y
2) check docker status
systemctl status docker
3) start docker
systemctl start docker
4) enable as log on service
systemctl enable docker
5) check docker status again

# Now start with Node project
instead of index.js, can have another file like app.js also, but need to update same in package.json and geenrate code for app.js and remove index.js
1) after geenerating app.js/index.js, package.json and Dockerfile, now build the image from the same location/path where your Dockerfile is in in ec2 instance
docker build -t imagename:version .
2) Now check if image is createrd
docker images
3) Now if image is creted,
run an image to create container
docker run -d -p hostport:containerport --name containername imagename:version
4) check if container is created
docker ps -a
5) check if container can be accessed through the port mentioned in dockerfile and/or package.json

ex: http://ec2-publicip:portnumber


