pipeline {
    agent any
     stages {
        stage('Build') {
            steps {
                sh 'chmod +x build.sh'
                sh './build.sh' 
            }
        }
         stage('Push to Docker Hub') {
            steps {
                // Push the Docker image to Docker Hub
                script {
                    docker.withRegistry('https://index.docker.io/v1/', 'docker-hub-credentials') {
                        docker.image('tarun8117/react-app:latest').push()
                    }
                }
            }
        }
    }
}
