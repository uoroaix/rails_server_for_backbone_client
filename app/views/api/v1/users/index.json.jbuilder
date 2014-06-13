json.array! @users do |user|
  json.firstname user.firstname
  json.lastname user.lastname
  json.age user.age
  json.id user.id
end