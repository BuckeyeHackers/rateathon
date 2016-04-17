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
org3 = Organization.create(name: "MHacks")
org4 = Organization.create(name: "Boilermake")


event = Event.create(name: "RevUC 2016",       organization: org,  date: Date.today)
event2 = Event.create(name: "Hack OHIO 2015",  organization: org2, date: Date.today - 1.years)
event3 = Event.create(name: "MHacks 2014",     organization: org3, date: Date.today - 2.years)
event4 = Event.create(name: "Boilermake 2015", organization: org4, date: Date.today - 1.years)

user = User.create(email: "example@exaple.com", password: "foobarbaz")
user2 = User.create(email: "example2@exaple.com", password: "foobarbaz")

review = Review.create(event: event, user: user, swag: 5, food: 3,
                       environment: 8, prizes: 10, resources: 6,
                       comment: "Foo bar baz qux")
review1 = Review.create(event: event2, user: user, swag: 8, food: 10, environment: 8,
                        prizes: 10, resources: 6, comment: "Foo bar baz qux")
review2 = Review.create(event: event3, user: user2, swag: 1, food: 5, environment: 4,
                        prizes: 5, resources: 6, comment: "Foo bar baz qux")
review3 = Review.create(event: event4, user: user2, swag: 5, food: 10, environment: 8,
                        prizes: 10, resources: 6, comment: "Foo bar baz qux")
Review.create(event: event2, user: user2, swag: 5, food: 10, environment: 10,
                        prizes: 10, resources: 6, comment: "Foo bar baz qux")

Voting.create(user: user2, review: review,  value: 1)
Voting.create(user: user2, review: review1, value: 1)
Voting.create(user: user2, review: review2, value: 1)
Voting.create(user: user2, review: review3, value: 1)
