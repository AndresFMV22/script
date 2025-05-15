pipeline {
    agent any

    stages {
        stage('Clonar repositorio') {
            steps {
                git 'https://github.com/AndresFMV22/script.git'  // ← reemplaza con tu repo real
            }
        }

        stage('Construir imagen Docker') {
            steps {
                sh 'docker build -t miapp .'
            }
        }

        stage('Detener contenedor anterior') {
            steps {
                sh 'docker stop miapp || true'
                sh 'docker rm miapp || true'
            }
        }

        stage('Ejecutar contenedor') {
            steps {
                sh 'docker run -d --name miapp -p 8090:80 miapp'
            }
        }
    }
}
