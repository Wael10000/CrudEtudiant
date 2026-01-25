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

        stage('GIT') {
            steps {
                git branch: 'master', url: 'https://github.com/Wael10000/CrudEtudiant.git'
            }
        }

       stage('Build & Test') {
    steps {
        sh 'mvn clean verify'
    }
}

stage('SonarQube Analysis') {
    steps {
        withCredentials([string(credentialsId: 'SONAR_TOKEN', variable: 'SONAR_TOKEN')]) {
            sh """mvn sonar:sonar \
                -Dsonar.projectKey=CrudEtudiant \
                -Dsonar.host.url=http://192.168.33.10:9000 \
                -Dsonar.login=$SONAR_TOKEN \
                -Dsonar.coverage.jacoco.xmlReportPaths=target/jacoco/jacoco.xml"""
          }
        }
    }
  }
}

