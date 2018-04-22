echo "Getting the code from GitHub"

git clone https://github.com/nevishs/DockerLamp.git /tmp/DockerLamp
cd /tmp/DockerLamp

echo "Docker pull";

docker pull nevishs/lamp-server;

echo "Docker run";

docker run -d -p 80:80 -p3306:3306 -v /tmp/DockerLamp/www:/var/www nevishs/lamp-server; sleep 20; curl http://localhost/install.php;

echo "Done";
