pipeline
{
    agent any
    environment
    {
        DOCKER="C:/Program Files/Docker/Docker/resources/bin/docker.exe"
        IMAGE_NAME="app"
        IMAGE_TAG="latest-ci"
    }
    stages
    {
        stage("Builiding Docker Image")
        {
            steps
            {
            bat "\"${env.DOCKER}\" build -t ${env.IMAGE_NAME} ."
            }
        }
        stage("Docker Tagging")
        {
            steps
            {
            bat "\"${env.DOCKER}\" tag ${env.IMAGE_NAME}:latest ${env.IMAGE_NAME}:${env.IMAGE_TAG}"
            }
        }
    }
    post
    {
        success
        {
            echo "All the steps are followed int he right sequential manner and it iss successfull"
        }
        failure
        {
            echo "Sorry retry again"
        }
        always
        {
            echo "Cleaning up"
            deleteDir()
        }
    }
}