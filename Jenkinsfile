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

        stage('MVN SONARQUBE') {
            steps {
                echo 'Running SonarQube'
                sh """
                    mvn sonar:sonar \
                    -Dsonar.projectKey=CrudEtudiant \
                    -Dsonar.host.url=http://192.168.33.10:9000 \
                    -Dsonar.login=${SONAR_TOKEN}
                """
            }
        }
    }
}

