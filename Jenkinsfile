pipeline {
agent any

```
stages {

    stage('Clone Repository') {
        steps {
            git 'https://github.com/millicent-eze/CodeAlpha_WebServer.git'
        }
    }

    stage('Build Docker Image') {
        steps {
            sh 'docker build -t codealpha-webserver .'
        }
    }

    stage('Run Docker Container') {
        steps {
            sh 'docker run -d -p 8090:80 codealpha-webserver'
        }
    }

}
```

}
