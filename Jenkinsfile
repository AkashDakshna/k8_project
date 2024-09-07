pipeline{
    agent any
    stages{
        stage('Git Checkout'){
            steps{
                git
            }
        }
        stage('Docker image'){
            steps{
                sh 'sudo docker build -t newimage /var/lib/jenkins/workspace/k8_project'
                sh 'sudo docker tag newimage AkashDakshna/newimage:latest'
                sh 'sudo docker tag newimage AkashDakshna/newimage:${BUILD_NUMBER}'
            }
        }
        stage('Push to Repo'){
            steps{
                sh 'sudo docker push AkashDakshna/newimage:latest'
                sh 'sudo docker push AkashDakshna/newimage:${BUILD_NUMBER}'
            }
        } 
        stage('Kuber deployment'){
            steps{
                sh 'kubectl apply -f /var/lib/jenkins/workspace/k8_project/Pod.yml'
                sh 'kubectl rollout restart deployment deployment-pod'
            }
        }
    }
}