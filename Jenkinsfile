
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building Java application'
                bat 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                echo 'Building Docker image'
                bat 'docker build -t java-cicd:1.0 .'
            }
        }

        stage('Docker Run') {
            steps {
                echo 'Running Java application in Docker'
                bat 'docker run --rm java-cicd:1.0'
            }
        }
    }

    post {
        success {
            echo 'CI/CD Pipeline completed successfully!'
        }
        failure {
            echo 'CI/CD Pipeline failed!'
        }
    }
}
