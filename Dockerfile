FROM jenkins
USER root
EXPOSE 8080

RUN curl --silent --location https://deb.nodesource.com/setup_0.10 | bash - \
&& apt-get update \
&& apt-get install -y apt-utils \
&& apt-get install -y curl \
&& apt-get install -y libltdl7 \
&& apt-get install -y  nodejs \
&& apt-get install -y npm

