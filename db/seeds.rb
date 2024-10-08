require 'faker'
Faker::Config.locale = 'fr-CA'

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create(email: "miguel@gmail.com", password: "Miguel90", admin: true)
User.create(email: "justin@gmail.com", password: "Justin90", admin: false)
User.create(email: "vincent@gmail.com", password: "Vincent90", admin: false)
(1..10).each do |i|
    Business.create(name: Faker::Restaurant.name, 
                    description: Faker::Restaurant.description, 
                    phone: Faker::PhoneNumber.phone_number, 
                    email: Faker::Internet.email, 
                    site_web: Faker::Internet.url, 
                    menus_attributes: [
                        {
                            title: "Fin de semaine",
                            menus_attributes: [
                                {   
                                    title: "Dejeuner", 
                                    items_attributes: [
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                                ]
                                },
                                {   title: "Diner", 
                                    items_attributes: [
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                                ]
                                },
                                {   title: "Souper", 
                                    items_attributes: [
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                                ]
                                }
                            ]
                        }
                    ],
                    user_id: 1
                )
    end
    (1..3).each do |i|
        Business.create(name: Faker::Restaurant.name, 
                        description: Faker::Restaurant.description, 
                        phone: Faker::PhoneNumber.phone_number, 
                        email: Faker::Internet.email, 
                        site_web: Faker::Internet.url, 
                        menus_attributes: [
                            {
                                title: "Fin de semaine",
                                menus_attributes: [
                                    {   
                                        title: "Dejeuner", 
                                        items_attributes: [
                                                    {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                    {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                    {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                    {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                                    ]
                                    },
                                    {   title: "Diner", 
                                        items_attributes: [
                                                    {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                    {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                    {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                    {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                                    ]
                                    },
                                    {   title: "Souper", 
                                        items_attributes: [
                                                    {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                    {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                    {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description},
                                                    {name: Faker::Food.vegetables, price: Faker::Commerce.price, description: Faker::Food.description}
                                                    ]
                                    }
                                ]
                            }
                        ],
                        user_id: 2
                    )
        end
            