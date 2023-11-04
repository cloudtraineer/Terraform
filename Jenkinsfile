pipeline {
    agent any

    stages {

        stage('Terraform Init') {
            steps {
                script {
                    dir("${env.Workspace}/code/02-Working_with_EC2") {
                        sh 'terraform init'
                    }
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    dir("${env.Workspace}/code/02-Working_with_EC2") 
                    {
                       sh 'terraform plan -out=tfplan'
                    }
                }
            }
        }

        stage('Manual Approval') {
            steps {
                script {
                    // Wait for manual approval
                    input message: 'Do you approve the Terraform plan and want to deploy it?',
                          ok: 'Deploy',
                          parameters: [booleanParam(defaultValue: true, description: 'Check to deploy', name: 'DEPLOY')]
                }
            }
        }
        
        stage('Terraform Apply') {
            steps {
                script {
                    dir("${env.Workspace}/code/02-Working_with_EC2") 
                    {
                        sh 'terraform apply tfplan'
                    }

                }
            }
        }
    }

    post {
        success {
            emailext subject: 'Terraform Apply Successful',
                body: 'Terraform apply was successful',
                to: 'your-email@example.com'
        }
        failure {
            emailext subject: 'Terraform Apply Failed',
                body: 'Terraform apply failed. Please check the Jenkins logs for details.',
                to: 'your-email@example.com'
        }
    }
}
