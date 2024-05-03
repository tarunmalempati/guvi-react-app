pipeline {
    agent any
    
    triggers {
        githubPush()
    }
     stages {
        stage('Build') {
            steps {
                sh 'chmod +x build.sh'
                sh './build.sh'
            }
        }
    }
} 
