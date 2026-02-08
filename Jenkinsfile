pipeline
{
    agent any
    environment
    {
        DOCKER='"C:/Program Files/Docker/Docker/resources/bin/docker.exe"'
    }
    steps
    {
        step("Builiding Docker Image")
        {
            bat "%DOCKER% build -t app ."
        }
        step("Docker Tagging")
        {
            bat "%DOCKER% tag $app:$sample $app:latest-ci"
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
            cleanWS()
        }
    }
}