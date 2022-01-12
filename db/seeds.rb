# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create(email: "doanngoctan@gmail.com",
    password: "123123",
    password_confirmation: "123123"
)
User.create(email: "tanoffer12@gmail.com",
    password: "123123",
    password_confirmation: "123123"
)
History.create(
    user_id: 1,
    score: 80,
    test_time: "12/10/2020",
    status: true
)