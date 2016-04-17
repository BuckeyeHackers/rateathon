# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
org = Organization.create(name: "RevUC")
org2 = Organization.create(name: "Hack OHIO")

event = Event.create(name: "RevUC 2016", organization: org, date: Date.today)
event2 = Event.create(name: "Hack OHIO 2015", organization: org2, date: Date.today - 1.years)

user = User.create(email: "example@exaple.com", password: "foobarbaz")
user2 = User.create(email: "example2@exaple.com", password: "foobarbaz")

review = Review.create(event: event, user: user, swag: 5, food: 3,
                       environment: 8, prizes: 10, resources: 6,
                       comment: "Foo bar baz qux")
Review.create(event: event2, user: user, swag: 5, food: 10, environment: 8,
              prizes: 10, resources: 6, comment: "Foo bar baz qux")


Voting.create(user: user2, review: review, value: 1)
