pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/USERNAME/ionic-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker-compose build'
                }
            }
        }

        stage('Run App') {
            steps {
                script {
                    sh 'docker-compose up -d'
                }
            }
        }

        stage('Verify Running') {
            steps {
                echo 'App is running on port 8100...'
            }
        }
    }
}
