json.array!(@users) do |user|
  json.extract! user, :user_name, :user_surname, :user_adress_city, :user_adress_zip, :user_adress_street, :user_adress_number, :user_mail, :user_tel, :user_password
  json.url user_url(user, format: :json)
end