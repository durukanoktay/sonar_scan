pipeline 
{
    agent { label 'cross-compile'}

    stages 
    {
        stage('Clone Repository') 
        {
            steps 
            {
                
                git url: 'https://github.com/durukanoktay/sonar_scan.git'
            }
        }
        
        stage('Build') 
        {
            steps 
            {
                bat 'build.bat'
            }
        }
        stage('SonarQube') {
            steps {
                withSonarQubeEnv('sonarqube-jenkins') {
                    script {
                        echo 'Running SonarQube analysis...'
                    }
                    bat """
                        echo "Current directory: %CD%"
                        echo "Running SonarQube build and analyze script..."
                        call ${env.WORKSPACE}\\sonarqube.bat
                    """
                    script {
                        echo 'SonarQube analysis completed.'
                    }
                }
            }
        }
    }
}