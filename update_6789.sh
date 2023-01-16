docker stop xiaoya
docker rm xiaoya
docker pull xiaoyaliu/alist:latest
if [ -d /opt/docker/xiaoya/mytoken.txt ]; then
	rm -rf /opt/docker/xiaoya/mytoken.txt
fi
mkdir -p /opt/docker/xiaoya
touch /opt/docker/xiaoya/mytoken.txt
touch /opt/docker/xiaoya/pikpak.txt
docker run -d -p 6789:80 -v /opt/docker/xiaoya:/data --restart=always --name=xiaoya xiaoyaliu/alist:latest
