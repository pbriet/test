pipeline {
    agent any

    environment {
        FAVOURITE_FRUIT = 'tomato'
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building with master pipeline..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}