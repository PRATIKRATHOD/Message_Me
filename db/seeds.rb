# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# user=User.create(username: "pratik", password: "1111")
# user=User.create(username: "shekhar", password: "2222")
# user=User.create(username: "sandeep", password: "3333")
# user=User.create(username: "neha", password: "4444")
# user=User.create(username: "kavita", password: "5555")

message=Message.create(body: "hello eveyone", user_id: 1)
message=Message.create(body: "hey new guy", user_id: 2)
message=Message.create(body: "blah blah", user_id: 3)