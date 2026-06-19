pipeline {
    agent any

    environment {
        DEV_IMAGE  = "jasmine2324/joycejasmine24-dev"
        PROD_IMAGE = "jasmine2324/joycejasmine24-prod"
        IMAGE_TAG  = "v1"
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'dev',
                url: 'https://github.com/JoyceJasmine-24/Reactjs-ecommerce-deployment.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def branch = sh(
                        script: 'git rev-parse --abbrev-ref HEAD',
                        returnStdout: true
                    ).trim()

                    if (branch == "master") {
                        sh "docker build -t ${PROD_IMAGE}:${IMAGE_TAG} ."
                    } else {
                        sh "docker build -t ${DEV_IMAGE}:${IMAGE_TAG} ."
                    }
                }
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([
                    usernamePassword(
                        credentialsId: 'dockerhub-creds',
                        usernameVariable: 'DOCKER_USER',
                        passwordVariable: 'DOCKER_PASS'
                    )
                ]) {
                    sh '''
                    echo $DOCKER_PASS | docker login -u $DOCKER_USER --password-stdin
                    '''
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                script {
                    def branch = sh(
                        script: 'git rev-parse --abbrev-ref HEAD',
                        returnStdout: true
                    ).trim()

                    if (branch == "master") {
                        sh "docker push ${PROD_IMAGE}:${IMAGE_TAG}"
                    } else {
                        sh "docker push ${DEV_IMAGE}:${IMAGE_TAG}"
                    }
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline executed successfully.'
        }
        failure {
            echo 'Pipeline execution failed.'
        }
    }
}
