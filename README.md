Docker image based off of [rocker-shiny](https://github.com/rocker-org/shiny) for the encuestas app.

To clone the encuestas project when in the project's repository:

```
$ cd project
$ git clone https://github.com/HollowVin/encuestas
```

To build the container:

`$ sudo docker build --rm -t shiny-encuestas:latest .`

To run it, execute run.sh<n/>

`$ ./run.sh`
