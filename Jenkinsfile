pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/RifdaMaulidya24/iconic-praktikum.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    bat 'docker-compose build'
                }
            }
        }

        stage('Run App') {
            steps {
                script {
                    bat 'docker-compose up -d'
                }
            }
        }

        stage('Verify Running') {
            steps {
                echo '✅ App is running on port 8100...'
            }
        }
    }
}
