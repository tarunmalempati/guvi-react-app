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
                        docker.image('tarun8117/guvi-react-app-prod:latest').push()
                    }
                }
            }
        }
        // stage('Pull Docker Image') {
        //   steps {
        //        script {
        //            // Pull the Docker image from Docker Hub
        //            docker.image('tarun8117/guvi-react-app-prod:latest').pull()
        //        }
        //   }
        // }
         
         stage('Deploy') {
            steps {
                sh 'chmod +x deploy.sh'
                sh './deploy.sh' 
            }
        }
    }
}
