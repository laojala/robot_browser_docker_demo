# Robot Framwork Docker Demo

Demo project for running tests using Robot Framework's [Browser Library](https://github.com/MarketSquare/robotframework-browser) and [Pabot Library](https://github.com/mkorpela/pabot). Image is excercise submission for a docker MOOC: [https://devopswithdocker.com/](https://devopswithdocker.com/)

Note: Browse Library has published [Docker Packages](https://github.com/MarketSquare/robotframework-browser/blob/master/atest/docker/DOCKER.md) and it is recommended to use those for testing.


## Instructions to run

Container has one test using Browse Library. To run this one test, run container using a command:

        docker run --rm <image_name>

It is possible also to bind mount and run other tests inside this image. To bind mout, use command:

        docker run --rm -v ${pwd}/<path_to_test_file>:/tests <image_name>