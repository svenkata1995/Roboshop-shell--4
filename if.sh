fruit_name=mango
quantity=2

if[ "fruit_name" == "mango"]
then
  echo mango quantity - $quantity
  else
    echo fruit does not exist
    fi

    if [-z "$app_user" ]; then
      echo input roboshop app user is missing