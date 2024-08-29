FROM ubuntu:latest

#set working directory
WORKDIR /app

#Copy all the files to the workdir
COPY . /app

#install the dependencies
RUN apt-get update && apt-get install -y python python3-pip

#set ENV variable
ENV NAME hello

#Command to run my application
CMD ["python3" , "test.py"]

