FROM jenkins
USER root
EXPOSE 8080

RUN apt-get update \
&& apt install -y curl \
&& apt-get install -y libltdl7 \
&& apt install -y  nodejs \
&& apt install -y npm

