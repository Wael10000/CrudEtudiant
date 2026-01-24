pipeline {
    agent any

    stages {
        stage('Hello') {
            steps {
                echo 'devOps Project'
            }
        }

        stage('Checkout') {
            steps {
                // clone your Git repository
                git branch: 'master', url: 'https://github.com/Wael10000/CrudEtudiant.git'
            }
        }
          stage('build') {
            steps {
                // Clone your Git repository
            sh 'mvn compile'
            }
          }
        stage ('GIT')
              steps {
                  echo 'getting project from git'
        }
              stage ('MVN SONARQUBE'){
                     steps {
                         sh """
                        MVN sonar : sonar \
                    -Dsonar.projectKey=CrudEtudiant \
                    -Dsonar.host.url=http://localhost:9000 \
                    -Dsonar.login=${SONAR_TOKEN}
                    """
                     }
              }
}
