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
                        sh 'cd /app && npm test'
                        sh 'cp /app/junit.xml $WORKSPACE/'
                        sh 'ls -lsa $WORKSPACE'
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

    post {
        always {
            junit 'junit.xml'
        }
    }

}