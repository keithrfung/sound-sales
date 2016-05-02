# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(first_name: "Adam",
    		last_name: "Administrator",
    		username: "adam_admin",
    		password: "password",
    		email: "adam@sales.com",
    		password_confirmation: "password",
    		role: "Admin",
    		manager_id: 0,
    		region_id: 1)

User.create!(first_name: "Sam",
    		last_name: "Salesperson",
    		username: "sam_sales",
    		password: "password",
    		email: "sam@sales.com",
    		password_confirmation: "password",
    		role: "Sales",
    		manager_id: 0,
    		region_id: 1)