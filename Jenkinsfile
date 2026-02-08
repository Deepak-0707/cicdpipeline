pipeline
{
    agent any
    environment
    {
        DOCKER='"C:/Program Files/Docker/Docker/resources/bin/docker.exe"'
    }
    stages
    {
        stage("Builiding Docker Image")
        {
            steps
            {
            bat "%DOCKER% build -t app ."
            }
        }
        stage("Docker Tagging")
        {
            steps
            {
            bat "%DOCKER% tag $app:$sample $app:latest-ci"
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