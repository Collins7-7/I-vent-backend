puts "Seeding users"

User.create(full_name:"Mercy Maruga",email:"mercy@google.com",phone_number:072536000,age:30,gender:"female",password_digest:"event12345",image_url:"alfedffgngf")
User.create(full_name:"Kylian Mbappe",email:"kylian@google.com",phone_number:072000234,age:23,gender:"male",password_digest:"KYl12345",image_url:"afkedffgnwawwf")
User.create(full_name:"Leonel Messi",email:"messi@google.com",phone_number:072000022,age:37,gender:"male",password_digest:"siri12345",image_url:"affwbdwdvgfwdgf")
User.create(full_name:"melissa Jones",email:"jones@google.com",phone_number:072000002,age:32,gender:"female",password_digest:"pin12345",image_url:"afedmmnnbgngf")

puts "Done seeding user"