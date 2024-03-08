pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scmGit(branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/karthicksri111/terraform_cicd']])
            }
        }
        stage('Init') {
            steps {
                sh ("terraform init -reconfigure")
            }
        }
        stage('Plan') {
            steps{
                sh ("terraform plan")
            }
        }
        stage('Action') {
            steps{
                sh ("terraform ${action} --auto-approve")
            }
        }
    }
}
