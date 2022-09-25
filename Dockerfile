# FROM ubuntu 

# RUN apt-get update -y && apt-get install -y \
#     unzip \
#     wget \
#     default-jre \                           
#     nginx


# FROM ubuntu:latest

# RUN apt-get update -y && apt-get install -y \
#     unzip \
#     wget \
#     default-jre \                  
#     nginx

#FROM ubuntu
# FROM httpd

# FROM redis:latest

# RUN apt-get update -y && apt-get install -y \
#     unzip \
#     wget \
#     default-jre \                  
#     nginx


FROM centos:7
RUN yum -y install epel-release
RUN yum -y update
RUN yum -y install nginx
ADD index.html /usr/share/nginx/html/index.html     
EXPOSE 800/tcp
CMD ["nginx", "-g daemon off;"]







