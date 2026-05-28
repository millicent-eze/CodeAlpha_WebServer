pipeline {
    agent { label 'agent-1' }

    stages {

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
}