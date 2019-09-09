pipeline {
    agent {
        label 'agent-activate'
    }
    stages {
        stage('Initialize') {
            steps {
                sh '''
                    echo USER=${USER:-unknown}
                    mkdir -p /home/jenkins/wpsmvn
                    chown -R $USER /home/jenkins/wpsmvn
                    id -u $USER
                    ls -la /home/jenkins
                    ls -la /home/jenkins/wpsmvn
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
                    args "-v wpsmvn:/home/wellpass:rw,z"
                }
            }
            steps {
                sh '''
                    set +e
                    set -o
                    whoami
                    id
                    echo $PATH
                    echo $JAVA_HOME
                    echo USER=${USER:-unknown}
                    echo USER_HOME=${USER_HOME:-unknown}
                    ls -la $WORKSPACE
                    whereis java
                    whereis mvn
                    java -version
                    mvn --version
                    ls -la /home/wellpass
                    mvn -X help:effective-settings
                    mvn -X help:system
                '''
            }
        }
    }
}