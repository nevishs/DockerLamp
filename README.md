# DockerLamp (Linux, Apache2, MySQL, PHP)

## In this project you will:

* _Build a docker image with (Linux, Apache2, MySQL, PHP)._
* _Run the image to create a container._
* _Setup the web files and database._
* _Interact with web software on your browser._

## Instructions:

__Step 1__: Clone the necessary files
> Note: /tmp/DockerLamp -> working folder
```docker
> git clone https://github.com/nevishs/DockerLamp.git /tmp/DockerLamp
> cd /tmp/DockerLamp
```

__Step 2__: Build the image
> Note: lampserver -> image name
```
> docker build -t lampserver .
```

__Step 3__: Create the container
> Note: eb7afe2ea395 -> image id, lampserver -> image name, /tmp/DockerLamp/www -> web files
```
> docker run --name eb7afe2ea395 -d -p 80:80 -p3306:3306 -v /tmp/DockerLamp/www:/var/www lampserver
```

__Step 4__: Setup the database
> Note: install.php will import our db
```
> http://127.0.0.1/install.php
```

__Step 5__: Interact with the site
> Note: test out the functionality
```
> http://127.0.0.1/public/
```
