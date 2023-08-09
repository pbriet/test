pipeline {
    agent any

    environment {
        FAVOURITE_FRUIT = 'tomato'
        dockerImage = ''
    }

    stages {
        stage('Build') {
            steps {
                script {
                    dockerImage = docker.build("my-image:tag")
                    // dockerImage.push()
                }
            }
        }
        stage('Test') {
            steps {
                script {
                    dockerImage.inside {
                        sh 'whoami'
                        sh 'env'
                        sh 'pwd'
                        sh 'cd /app && npm test'
                    }
                }
            }
        }
        stage('Deploy') {
            steps {

	      		// Create an Approval Button with a timeout of 15 minutes.
                timeout(time: 15, unit: "MINUTES") {
                    input message: 'Do you want to approve the deployment?', ok: 'Yes'
                }

                echo 'Deploying....'
            }
        }
    }
}