FROM jenkins/jenkins
USER root
EXPOSE 8080

RUN apt-get update \
&& apt-get install -y curl \
&& curl --silent --location https://deb.nodesource.com/setup_10.x | bash - \
&& apt-get install -y apt-utils \
&& apt-get install -y libltdl7 \
&& apt-get install -y  nodejs \
&& apt-get install -y npm

