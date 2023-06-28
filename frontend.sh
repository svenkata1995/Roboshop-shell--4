echo -e "\e[32m>>> Install nginx <<<\e[0m"
yum install nginx -y

echo -e "\e[32m>>> Start & Enable Nginx service <<<\e[0m"
systemctl enable nginx
systemctl start nginx

rm -rf /usr/share/nginx/html/*

echo -e "\e[32m>>> Download the frontend content <<<\e[0m"
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip
cd /usr/share/nginx/html

echo -e "\e[32m>>> unzip the frontend content <<<\e[0m"
unzip /tmp/frontend.zip

cp roboshop.conf /etc/nginx/default.d/roboshop.conf

echo -e "\e[32m<<< restart nginx >>>\e[0m"
systemctl restart nginx