# 
# Install NGINX
# 

sudo yum install -y yum-utils

echo -e "[nginx-mainline]
name=nginx mainline repo
baseurl=http://nginx.org/packages/mainline/centos/7/x86_64/
gpgcheck=1
enabled=0
gpgkey=https://nginx.org/keys/nginx_signing.key
module_hotfixes=true" | sudo tee /etc/yum.repos.d/nginx.repo

sudo yum-config-manager --enable nginx-mainline

sudo yum install -y nginx

sudo systemctl daemon-reload
sudo systemctl enable nginx
sudo systemctl start nginx
