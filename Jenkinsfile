pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t telematica-app .'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker stop telematica-app || true'
                sh 'docker rm telematica-app || true'
                sh 'docker run -d --name telematica-app -p 80:8000 telematica-app'
            }
        }
    }
}
