ARG versions
FROM ubuntu:$versions
RUN apt update && apt install nginx
EXPOSE 80 