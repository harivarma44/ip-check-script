pipeline {
    agent any   // Runs on any available Ubuntu/Linux agent
    stages {
        stage('Checkout') {
            steps {
                // Clone your GitHub repository
                git branch: 'main', url: 'https://github.com/harivarma44/ip-check-script.git'
            }
        }
        stage('Run Script') {
            steps {
                // Ensure script is executable
                sh 'chmod +x get-ip.sh'
                
                // Run the script
                sh './get-ip.sh'
            }
        }
    }
    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
