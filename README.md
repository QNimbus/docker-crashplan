# docker crashplan
This is a Dockerfile to set up "Crashplan" - (http://code42.com/products/crashplan)
Build from docker file
```
git clone https://github.com/QNimbus/docker-crashplan.git
cd docker-crashplan
docker build --rm --no-cache -t qnimbus/docker-crashplan .
```

docker run -d -h ${HOSTNAME} --name=crashplan -v /path/to/your/config:/config -v /path/to/your/data/folder:/data -v /etc/localtime:/etc/localtime:ro -p 4242:4242 -p 4243:4243 qnimbus/docker-crashplan
