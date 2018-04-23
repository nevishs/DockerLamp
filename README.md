# Docker Lamp (Linux, Apache2, MySQL, PHP)

## In this project you will:

* _Build a docker image with (Linux, Apache2, MySQL, PHP)._
* _Run the image to create a container._
* _Setup the web files and database._
* _Interact with web software on your browser._

OR 

* _Pull and Run the image from docker HUB._

OR 

* _Run the whole steps in one click_

## Instructions:

__Step 1__: Clone the necessary files
> Note: /tmp/DockerLamp -> working folder
```
> git clone https://github.com/nevishs/DockerLamp.git /tmp/DockerLamp
> cd /tmp/DockerLamp
```

__Step 2__: Build the image
> Note: lamp-server -> repo name
```
> docker build -t lamp-server .
```

__Step 3__: Create the container
> Note: eb7afe2ea395 -> image id, lamp-server -> repo name, /tmp/DockerLamp/www -> web files
```
> docker run --name eb7afe2ea395 -d -p 80:80 -p3306:3306 -v /tmp/DockerLamp/www:/var/www lamp-server
```

__Step 4__: Setup the database
> Note: install.php will import our db
```
> http://127.0.0.1/install.php 
  OR 
> curl http://localhost/install.php //on your docker machine
```

__Step 5__: Interact with the site
> Note: test out the functionality
```
> http://127.0.0.1/public/
```


### OR


__Step 1__: Prepare the files
> Note: /tmp/DockerLamp -> working folder
```
> git clone https://github.com/nevishs/DockerLamp.git /tmp/DockerLamp
> cd /tmp/DockerLamp
```

__Step 2__: Pull and Run the image
> Note: nevishs/lamp-server -> repo name, 83962226cfc5 -> image id
```
> docker pull nevishs/lamp-server
> docker run --name 83962226cfc5 -d -p 80:80 -p3306:3306 -v /tmp/DockerLamp/www:/var/www nevishs/lamp-server
> http://127.0.0.1/install.php
> http://127.0.0.1/public/
```


### OR


__Step 1__: Create script
> Note: dokcerlamp.sh -> scirpt name
```
> wget https://github.com/nevishs/DockerLamp/blob/master/scripts/runDockerLamp.sh
> chmod 755 runDockerLamp.sh
```

__Step 2__: Run the script
```
> ./runDockerLamp.sh
```


## Useful Commands:
```
> docker image ls         //lists all the images, this command is useful to find the repo name and image id
> docker container ps -a  //lists all the containers
> docker stop CONTAINERID //stops the container
> docker rm CONTAINERID   //destroys the container
```

