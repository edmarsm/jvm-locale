# jvm-locale
JVM Defining Locale with docker

## Testing docker locale settings
The main point here is to test how environment variables are reflected into Docker.

The _Dockerfile_ contains a declaration of JAVA_OPTS to defining JAVA runtime environments and some other variables to set Linux environment variables for locale.

This options should be important in cases you need to ensure the locale your application is running.

## How to build the docker image

`docker build -t <your_tag_name> .`

## To run the image use docker run
`docker container run --rm <your_tag_name>`
This should print to output the params passed in *JAVA_OPTS* defaults, case you want to change it to see OS defaults:
`docker container run --rm -e JAVA_OPTS="-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap" <your_tag_name>`
And you can also change it to any config you want changing the *JAVA_OPTS* environment variable.
