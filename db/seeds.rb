# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(first_name: "Adam",
            last_name: "Administrator",
            password: "password",
            email: "adam@sales.com",
            password_confirmation: "password",
            role: "Admin",
            manager_id: 0,
            region_id: 0)

User.create!(first_name: "Harry",
            last_name: "HumanResources",
            password: "password",
            email: "harry@sales.com",
            password_confirmation: "password",
            role: "Human Resources",
            manager_id: 0,
            region_id: 0)

User.create!(first_name: "Annie",
            last_name: "Accounting",
            password: "password",
            email: "annie@sales.com",
            password_confirmation: "password",
            role: "Accounting",
            manager_id: 0,
            region_id: 0)

User.create!(first_name: "Sam",
            last_name: "Salesperson",
            password: "password",
            email: "sam@sales.com",
            password_confirmation: "password",
            role: "Sales",
            manager_id: 0,
            region_id: 1)

User.create!(first_name: "Sonia",
            last_name: "Salesperson",
            password: "password",
            email: "sonia@sales.com",
            password_confirmation: "password",
            role: "Sales",
            manager_id: 1,
            region_id: 1)

User.create!(first_name: "Steve",
            last_name: "Salesperson",
            password: "password",
            email: "steve@sales.com",
            password_confirmation: "password",
            role: "Sales",
            manager_id: 0,
            region_id: 2)

User.create!(first_name: "Sven",
            last_name: "Salesperson",
            password: "password",
            email: "sven@sales.com",
            password_confirmation: "password",
            role: "Sales",
            manager_id: 2,
            region_id: 2)

Region.create!(name: "East",
               manager_id: 1)

Region.create!(name: "West",
               manager_id: 2)
               
Region.create!(name: "Mistake1",
               manager_id: 1)
               
Region.create!(name: "Mistake2",
               manager_id: 1)
               
Region.create!(name: "Mistake3",
               manager_id: 1)
               
Region.create!(name: "Mistake4",
               manager_id: 1)
               
Region.create!(name: "Mistake5",
               manager_id: 1)
               
Region.create!(name: "Mistake6",
               manager_id: 1)
               
Region.create!(name: "Mistake7",
               manager_id: 1)

Product.create!(name: "Microsoft Word 2016",
                description: "Spellchecking and Grammerz",
                price: 100.00,
                commission_rate: 10.0)

Product.create!(name: "Microsoft Excel 2016",
                description: "Edit zee tables",
                price: 50.00,
                commission_rate: 5.0)

Product.create!(name: "Adobe Acrobat",
                description: "View pdfs",
                price: 75.00,
                commission_rate: 5.0)
                
Product.create!(name: "WinZip",
                description: "Not a free trial",
                price: 10.00,
                commission_rate: 100.0)

Client.create!(name: "Allied Corporation",
               phone: "410-555-1212",
               address_line_1: "100 York Road",
               address_line_2: "Suite 220",
               city: "Towson",
               state: "MD",
               country: "USA",
               zipcode: "21210")

Client.create!(name: "Infotel Corporation",
               phone: "203-555-2345",
               address_line_1: "300 Main Street",
               address_line_2: "",
               city: "Santa Clara",
               state: "CA",
               country: "USA",
               zipcode: "91720")








