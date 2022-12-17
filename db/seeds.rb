puts "Seeding users"

User.create(full_name:"Mercy Maruga",email:"mercy@google.com",phone_number:072536000,age:30,gender:"female",password_digest:"event12345",image_url:"alfedffgngf")
User.create(full_name:"Kylian Mbappe",email:"kylian@google.com",phone_number:072000234,age:23,gender:"male",password_digest:"KYl12345",image_url:"afkedffgnwawwf")
User.create(full_name:"Leonel Messi",email:"messi@google.com",phone_number:072000022,age:37,gender:"male",password_digest:"siri12345",image_url:"affwbdwdvgfwdgf")
User.create(full_name:"melissa Jones",email:"jones@google.com",phone_number:072000002,age:32,gender:"female",password_digest:"pin12345",image_url:"afedmmnnbgngf")

puts "Done seeding user"

Category.destroy_all
puts "Seeding Category"

Category.create!(name: "Business", description: "Discover tips and best practices to scale up your business.", image_url: "https://images.unsplash.com/photo-1460925895917-afdab827c52f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1415&q=80")
Category.create!(name: "Technology", description: "Get to learn new trends in tech from the best.", image_url: "https://images.unsplash.com/photo-1620712943543-bcc4688e7485?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80")
Category.create!(name: "Art Workshops", description: "Expand your hobbies in our diverse and interactive workshops.", image_url: "https://images.unsplash.com/photo-1529892485617-25f63cd7b1e9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
Category.create!(name: "Sports", description: "Spike your adrenaline by the mind-blowing sports events.", image_url: "https://images.unsplash.com/photo-1574785525103-c35dd9b6bb91?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1374&q=80")
Category.create!(name: "Music Concerts", description: "Let's replenish and raise your spirits once more.", image_url: "https://images.unsplash.com/photo-1540039155733-5bb30b53aa14?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
Category.create!(name: "Community", description: "Get support and gain the accountability to achieve your goals.", image_url: "https://images.unsplash.com/photo-1462536943532-57a629f6cc60?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=873&q=80")

puts "Done seeding"