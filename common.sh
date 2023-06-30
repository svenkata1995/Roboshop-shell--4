app_user=roboshop

print_head() {
  echo -e "\e[33m>>>$*<<<\e[m0"
}

func_stat_check() {
  if [ $1 -eq 0 ]; then
    echo -e "\e[33mSUCCESS\e[0m"
    else
      echo -e "\e[33mFAILURE\e[0m"
      exit -1
      fi
}
func_nodejs() {
  print_head "Setup nodejs repos"
  curl -sL https://rpm.nodesource.com/setup_lts.x | bash
  func_stat_check $?

  print_head "Install Nodejs"
  yum install nodejs -y
    func_stat_check $?

  print_head "Add application User"
  useradd ${app_user}
    func_stat_check $?

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
useradd ${app_user}
}