pipeline {
    agent { label 'agent-1' }

    stages {

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t codealpha-webserver .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker run -d -p 8091:80 codealpha-webserver'
            }
        }

    }
}