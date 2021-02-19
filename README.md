# FatJenkins

A fat version of the Jenkins container that includes often used utilities and programs such as node, npm, curl, etc.
Also, this Jenkins container allow you to run Docker in a Pipeline stage of a shell exec task.

## Pre-installation

We'll run this project under [Katacoda](katacoda.com).

**Step 1:** Go to the Ubuntu playground in Katacoda

`https://katacoda.com/courses/ubuntu/playground`

**Step 2:** Clone the repository code

`git clone https://github.com/reselbob/fatjenkins.git`

**Step 3:** Go to the project's directory

`cd fatjenkins`


## Installation

**Step 1:** Build the container image locally.

`docker build -t fatjenkins .`

**Step 2:** Create the container based on the local Docker image, making the host's version of docker available to the Jenkins container

`docker run --name jenkins --network host -d -p 8080:8080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock -v /usr/bin/docker:/usr/bin/docker fatjenkins`

**Step 3:** Go to your browser and spin the Jenkins site up at `localhost:8080`.

**Step 4:** Once you get Fat Jenkins up and running as a Docker container, continue on to instructions
found [here](create-pipeline.md) to learn how to create a Jenkins Pipeline job.
