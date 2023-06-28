
print head() {
  echo -e "\e[35m>>>$1>>>\e[0m"
}
func_nodejs() {
  print_head " install nginx "
  yum install nginx -y
}
