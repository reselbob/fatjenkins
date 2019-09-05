# FatJenkins

A fat version of the Jenkins container that includes often used utilities and programs such as node, npm, curl, etc.
Also, this Jenkins container allow you to run Docker in a Pipeline stage of a shell exec task.

`docker build -t fatjenkins:v1 .`

Run the container making the host's version of docker available to the Jenkins container

`docker run --name jenkins -d -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker fatjenkins:v1`

Get the initial login ID that you'll need to access Jenkins

`docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword`

Confirm `docker` command works from inside the jenkins container

`docker exec -it jenkins docker ps`

Go to your browser and spin the Jenkins site up at `localhost:8080`.
