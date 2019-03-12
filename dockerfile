# Dockerfile

# install Node.js image。
FROM node:0.10

# container folder
WORKDIR /hello-ci-workflow

# add all files to container
# install npm package
ADD . /hello-ci-workflow
RUN npm install

# open 3000 port
EXPOSE 3000
CMD npm start
