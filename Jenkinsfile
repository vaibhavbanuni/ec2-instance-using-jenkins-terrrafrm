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
        stage('Plan') {
            steps {
                sh 'terraform plan -out main.tfplan'
            }
        }
        stage('Action') {
            steps {
                sh 'terraform ${tf_action} --auto-approve'
            }
        }
    }
}
