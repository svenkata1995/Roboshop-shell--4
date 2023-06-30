app_user=roboshop

print_head() {
  echo -e "\e[33m>>> $* <<<\e[m0"
}

func_nodejs() {
  print_head "Setup nodejs repos"
  curl -sL https://rpm.nodesource.com/setup_lts.x | bash

  print_head "Install Nodejs"
  yum install nodejs -y

  print_head "Add application User"
  useradd ${app_user}

  print_head "setup an app directory"
  mkdir /app

  print_head "Download the application code to created app directory"
  curl -L -o /tmp/user.zip https://roboshop-artifacts.s3.amazonaws.com/user.zip
  cd /app

  print_head "Extraction of file content"
  unzip /tmp/user.zip

print_head "download dependencies"
cd /app
npm install

}