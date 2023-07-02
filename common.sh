app_user=roboshop
tmp_log=/tmp/roboshop.log

func_print_head() {
  echo -e "\e[33m>>>$*<<<\e[0m"
}

func_stat_check() {
  if [ $1 -eq 0 ]; then
    echo -e "\e[34mSUCCESS\e[0m"
    else
      echo refer to the file tmp/roboshop.log for more information
      exit -1
      fi
}




func_maven() {
  func_print_head "Install Maven"
  yum install maven -y &>>$tmp_log
  func_stat_check $?

  func_print_head "Add application user"
  useradd ${app_user}
  func_stat_check $?

  func_print_head "setup an app directory"
  mkdir /app
  func_stat_check $?

  func_print_head "Download the application code to created app directory"
  curl -L -o /tmp/shipping.zip https://roboshop-artifacts.s3.amazonaws.com/shipping.zip
  cd /app
  func_stat_check $?

  func_print_head "Extract the file content"
  unzip /tmp/shipping.zip
  func_stat_check $?
}