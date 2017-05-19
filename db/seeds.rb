# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create(title: 'testowy project')
List.create(title: 'To do', description: "numer 1", user_id: 1, project_id: 1)
List.create(title: 'In progress', description: "numer 2", user_id: 1, project_id: 1)
List.create(title: 'Done', description: "numer 3", user_id: 1, project_id: 1)
User.create(email: 'example@example.com', password: 'haslo123')