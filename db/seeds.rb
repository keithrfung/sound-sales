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

Product.create!(name: "Server",
                description: "64GB RAM",
                price: 3124.00,
                commission_rate: 12.0)

Product.create!(name: "Firewall",
                description: "SSL VPN",
                price: 8200.00,
                commission_rate: 18.0)


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


Commission.create!(amount: 2634.16,
                   sale_id: 1,
                   product_id: 1)


Sale.create!(quantity: 7,
             subtotal: 21868.00,
             tax: 5.0,
             total: 23180.08,
             payment_type: "Check",
             sale_date: "2016-05-02 00:16:22",
             user_id: 1,
             client_id: 1,
             product_id: 1,
             commission_id: 1)







