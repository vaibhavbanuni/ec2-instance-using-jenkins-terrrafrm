pipeline {
    agent any

    stages {
        stage('Checkout GIT') {
            steps {
                checkout scm
            }
        }
        stage('Init') {
            steps {
                sh 'terraform init -upgrade'
            }
        }
        stage('Action') {
            agent { label 'terra-node' }
            steps {
                sh 'terraform ${tf_action} --auto-approve'
            }
        }
    }
}
