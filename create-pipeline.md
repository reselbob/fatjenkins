# Creating a CI/CD Pipeline using Fat Jenkins

The purpose of this exercise is to demonstrate how to implement a CI/CD
pipeline under Fat Jenkins that gets, tests and deploys code.

`https://katacoda.com/courses/ubuntu/playground`

`git clone https://github.com/reselbob/fatjenkins.git`

`cd fatjenkins`


```
node {
    stage("stop all existing containers"){
        sh 'docker stop $(docker ps -a -q)'
    }
    stage("nuke all existing containers"){
        sh 'docker rm $(docker ps -a -q)'
    }

    stage("Get code from GitHub"){
        git branch: 'dev', url: 'https://github.com/reselbob/wisesayings'
    }
    stage("Discovering workspace"){
        sh 'echo ${WORKSPACE}/app'
    }
    stage("confirm that node is installed"){
        sh 'which node'
    }
    stage("install the dependencies and run the test"){
        sh '${WORKSPACE}/unit-testing.sh'
    }
    stage("build the wisesayings container image"){
        sh 'docker build -t wisesayings ${WORKSPACE}/app'
    }
    stage("run the container"){
        sh 'docker run -d --name mywisesayings -p 3000:3000 wisesayings'
    }
    stage("call the website using curl"){
        sh 'curl localhost:3000'
    }
}
```