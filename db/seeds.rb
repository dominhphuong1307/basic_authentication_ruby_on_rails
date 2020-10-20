# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create(email:"dominhphuong2208@gmail.com",
    password: "121212",
    password_confirmation: "121212"
)



User.create(email: "dominhphuong2208@gmail.com",
    password: "121212",
    password_confirmation: "121212"
)
User.create( email: "vohoaithuong@gmail.com",
             password: "121212",
             password_confirmation: "121212"
       
)
User.create(email: "dominhhieu@gmail.com",
    password: "121212",
    password_confirmation: "121212"
 
)
User.create( email: "dominhphuong@gmail.com",
    password: "121212",
    password_confirmation: "121212"
  
)
User.create( email: "dominhphuong1@gmail.com",
    password: "121212",
    password_confirmation: "121212"

)

Question.create(
    content: "abc",
    isparamly: "1",
    answers_attributes: [
        {
        content: "xyz",
        correctkey: "1" },
        {
        content:"pwq",
        correctkey:"0"
        }
    ]
)