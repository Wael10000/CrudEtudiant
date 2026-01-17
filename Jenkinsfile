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
                // Clone your Git repository
                git branch: 'master', url: 'https://github.com/Wael10000/CrudEtudiant.git'
            }
        }
          stage('build') {
            steps {
                // Clone your Git repository
            sh nvm compile 
            }
        }
    }
}
