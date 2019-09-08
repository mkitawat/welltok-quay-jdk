pipeline {
    agent {
        dockerfile { 
            filename 'Dockerfile'
            registryUrl 'https://quay.io/repository/'
            // registryCredentialsId 'quay-welltok-mkitawat'
        }
    }
    stages {
        stage('Practice1') {
            steps {
                sh '''
                    set +e
                    set -o
                    echo $PATH
                    echo $JAVA_HOME
                    whereis java
                    whereis mvn
                    java -version
                    mvn --version
                    mvn help:effective-settings
                    mvn help:system
                '''
            }
        }
    }
}