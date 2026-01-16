pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/<your-username>/ip-check-script.git'
            }
        }
        stage('Run Script') {
            steps {
                // Run PowerShell script
                powershell 'powershell.exe -ExecutionPolicy Bypass -File Get-IP.ps1'
            }
        }
    }
}
