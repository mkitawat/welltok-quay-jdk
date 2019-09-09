pipeline {
    agent {
        dockerfile {
            label 'agent-activate'
            filename 'Dockerfile'
            registryUrl 'https://quay.io/repository/'
            registryCredentialsId 'quay-welltok-mkitawat'
            args "-v wps_mvn:/var/lib/maven:rw"
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
                    echo USER=${USER:-unknown}
                    echo USER_HOME=${USER_HOME:-unknown}
                    docker volume ls
                    docker volume inspect wps_mvn
                    ls -la $WORKSPACE
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