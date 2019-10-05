# Creating a CI/CD Pipeline using Fat Jenkins

The purpose of this exercise is to demonstrate how to implement a CI/CD
pipeline under Fat Jenkins that gets, tests and deploys code.

`https://katacoda.com/courses/ubuntu/playground`

`git clone https://github.com/reselbob/fatjenkins.git`

`cd fatjenkins`


```
node {
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
}
```