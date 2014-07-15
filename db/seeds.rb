# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'Faker'

5.times {puts ""}

puts "RUNNING SEED"

puts "deleting Person"
Person.delete_all

puts "deleting Company"
Company.delete_all

puts "deleting Job"
Job.delete_all

puts "deleting Entry"
Entry.delete_all


5.times {puts ""}
puts "Creating admins"
admin1 = Admin.create({
  email: "john@johnrandall.com",
  password: '12341234',
  first_name: "John",
  last_name: "Randall",
  address: "108 Claremont Ave\n Montclair, NJ 07042",
  mobile_phone: "973.454.1015"
})

admin2 = Admin.create({
  email: "test1@test.com",
  password: '12341234',
  first_name: "test",
  last_name: "Smith",
  address: "108 Claremont Ave\n Montclair, NJ 07042",
  mobile_phone: "973.454.1015"
})

admin3 = Admin.create({
  email: "andrew.g.wallace@gmail.com",
  password: 'password',
  first_name: 'Andrew',
  last_name: 'Wallace',
  address: "244 Monroe Ave.\n River Edge, NJ 07661",
  mobile_phone: "201.477.8256"
  })

3.times do
  admin = Admin.create({
    email: Faker::Internet.email,
    password: '12341234',
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: "#{Faker::Address.street_address}\n#{Faker::Address.city},#{Faker::Address.state} #{Faker::Address.zip}",
    mobile_phone: Faker::PhoneNumber.cell_phone
    })
end

5.times {puts ""}
puts "fleshing out companies"
Company.all.each do |company|
  company.update({
    name: "#{Faker::Company.name} #{Faker::Company.suffix}",
    logo_url: Faker::Company.logo,
    office_phone: Faker::PhoneNumber.cell_phone
    })
end

5.times {puts ""}
puts "adding 4 customers to each company"
Company.all.each do |company|
  4.times do
    company.roster_customer_clients.create({
      email: Faker::Internet.email,
      # password: '12341234',
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      address: "#{Faker::Address.street_address}\n#{Faker::Address.city},#{Faker::Address.state} #{Faker::Address.zip}",
      mobile_phone: Faker::PhoneNumber.cell_phone
    })
  end
end

5.times {puts ""}
puts "adding 10 jobs to each company"
Company.all.each do |company|
  10.times do
    company.jobs.create({
      name: Faker::Lorem.sentence(3),
      start_date: Faker::Business.credit_card_expiry_date,
      end_date: Faker::Business.credit_card_expiry_date,
      closed_status: [true, true, false, false].sample,
      paused_status: [false, false, false, true].sample,
      contract_price: rand(1000...30000),
      client_type: 'Customer',
      client_id: company.roster_customer_clients.sample.id
      })
  end
end





