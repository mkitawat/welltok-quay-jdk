pipeline {
    agent {
        label 'agent-activate'
    }
    stages {
        stage('Initialize') {
            steps {
                sh '''
                    docker volume create wpsmvn
                    docker volume ls
                    docker volume inspect wpsmvn
                '''
            }
        }
        stage('Practice1') {
            agent {
                dockerfile {
                    label 'agent-activate'
                    filename 'Dockerfile'
                    registryUrl 'https://quay.io/repository/'
                    registryCredentialsId 'quay-welltok-mkitawat'
                    args "-v wpsmvn:/var/lib/maven:rw,z"
                }
            }
            steps {
                sh '''
                    set +e
                    set -o
                    whoami
                    echo $PATH
                    echo $JAVA_HOME
                    echo USER=${USER:-unknown}
                    echo USER_HOME=${USER_HOME:-unknown}
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