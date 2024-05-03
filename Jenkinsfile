pipeline {
    agent any
    
    triggers {
        githubPush()
    }

     stages {
        stage('Checkout') {
            steps {
                // Checkout the code from GitHub repository
                git 'https://github.com/tarunmalempati/guvi-react-app.git'
            }
        }
        stage('Build') {
            steps {
                sh 'cd guvi-react-app'
                sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }
    }
} 
