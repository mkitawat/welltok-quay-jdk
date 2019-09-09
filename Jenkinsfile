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
                    whoami
                    echo $PATH
                    echo $JAVA_HOME
                    echo $USER
                    echo $USER_HOME
                    mkdir -p ${WORKSPACE}/.m2/repository
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