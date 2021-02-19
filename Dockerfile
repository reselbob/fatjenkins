FROM jenkins/jenkins:2.263.4-lts-jdk11
USER root
RUN apt-get update && apt-get install -y apt-utils wget

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
COPY jenkins.yaml /usr/share/jenkins/jenkins.yaml

ENV CASC_JENKINS_CONFIG=/usr/share/jenkins/jenkins.yaml

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt
