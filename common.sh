app_user=roboshop
print_head() {
  echo -e "\e[35m>>>$1>>>\e[0m"
}

func_nodejs() {
  print_head "Setup NodeJS repos"
  curl -sL https://rpm.nodesource.com/setup_lts.x | bash
  yum install nodejs -y

  print_head "Create application user"
  useradd ${app_user}
}