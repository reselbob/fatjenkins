# FatJenkins

A fat version of the Jenkins container that includes often used utilities and programs such as node, npm, curl, etc.
Also, this Jenkins container allow you to run Docker in a Pipleline stage of a shell exec task.

`docker build -t fatjenkins:v1 .`

Run the container making the host's version of docker available to the Jenkins container

`docker run -d -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker fatjenkins:v1`

Get the container id

`docker ps -a`

Get the initial login ID that you'll need to access Jenkins

`docker exec -it <CONTAINER_ID> cat /var/jenkins_home/secrets/initialAdminPassword`

Changes the rights on the `docker.sock` so that the Jenkins container can run `docker`.

`chmod 777 /var/run/docker.sock`

Go to your browser and spin the Jenkins site up at `localhost:8080`.
