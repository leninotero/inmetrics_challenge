pipeline {
    agent {
        docker {
            image 'ruby'
        }
    }
    
    stages {
        stage ('Build'){
            steps {
                echo 'Building or Resolved Dependencies'
                sh 'bundle install'
            }
        }
        
        stage ('Test'){
            steps {
                echo 'Running Regression Tests'
            }
        }
        
        stage ('UAT'){
            steps {
                echo 'Wait for User Acceptance'
                input(message: 'Go to production?', ok: 'Yes')
            }
        }
        
        stage ('Product'){
            steps {
                echo 'WebApps is Ready!'
            }
        }
    }
}