pipeline {
    agent any

    environment {
        SONAR_TOKEN = credentials('sonar-token-id') 
    }

    stages {
        stage('Hello') {
            steps {
                echo 'DevOps Project'
            }
        }

        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/Wael10000/CrudEtudiant.git'
            }
        }

        stage('Build') {
            steps {
                echo 'Building the project'
                sh 'mvn clean compile'
            }
        }

        stage('GIT Info') {
            steps {
                echo 'Getting project from Git'
            }
        }

        stage('SonarQube Analysis') {
            steps {
        withCredentials([string(credentialsId: 'SONAR_TOKEN', variable: 'SONAR_TOKEN')]) {
            sh """mvn clean test sonar:sonar \
                -Dsonar.projectKey=CrudEtudiant \
                -Dsonar.host.url=http://192.168.33.10:9000 \
                -Dsonar.token=$SONAR_TOKEN \
                -Dsonar.junit.reportPaths=target/surefire-reports \
                -Dsonar.coverage.jacoco.xmlReportPaths=target/site/jacoco/jacoco.xml"""
            }
        }
    }
}

