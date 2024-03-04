# Docker build command: (docker build -t <image_name>:<tag>)

#Setup the base image
FROM node:13-alpine 

# ENV command syntax: ENV <key>=<value> (Setup Env Var)
ENV MONGO_DB_USERNAME=admin\
    MONGO_DB_PWD=password

#RUN <command> (Create a directory)
RUN mkdir -p /home/app

#COPY <source> <destination> (Copy the entire contents of the (./app)app directory into the '/home/app')
COPY ./app /home/app

# WORKDIR <directory_path> (set default dir so that next commands executes in /home/app)
WORKDIR /home/app 

CMD [ "node", "app.js"]


