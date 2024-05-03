pipeline {
    agent any
     stages {
        stage('Build') {
            steps {
                sh 'git clone https://github.com/tarunmalempati/guvi-react-app.git'
                sh 'cd guvi-react-app'
                sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }
    }
} 
