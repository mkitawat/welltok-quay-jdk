pipeline {
    agent {
        dockerfile {
            label 'agent-activate'
            filename 'Dockerfile'
            registryUrl 'https://quay.io/repository/'
            registryCredentialsId 'quay-welltok-mkitawat'
            args "-v ${env.WORKSPACE}:/var/lib/maven:rw"
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
                    echo $USER_HOME
                    ls -la $WORKSPACE
                    whereis java
                    whereis mvn
                    java -version
                    mvn --version
                    mvn help:effective-settings
                    mvn help:system
                    ls -la "${env.WORKSPACE}/.m2/repository"
                '''
            }
        }
    }
}