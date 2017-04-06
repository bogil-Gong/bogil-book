password = 'pass123'
1.upto(20) do |i|
  User.create(
    first_name: "Tom-#{i}",
    last_name: "Name",
    email: "user-#{i}@example.com",
    password: password,
    password_confirmation: password
  )
end
