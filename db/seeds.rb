# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
puts "Populating the db..."
Product.delete_all
Product.create!(title: 'CoffeeScript',
  description: 
    %{
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
	functionality wrapped in a cleaner, more succinct syntax. In the first
	book on this exciting new language, CoffeeScript guru Trevor Burnham
	shows you how to hold onto all the power and flexibility of JavaScript
	while writing clearer, cleaner, and safer code.
      },
  image_url:   'cs.jpg',    
  price: 36.00)
puts "Created first product"
# . . .
Product.create!(title: 'Programming Ruby 1.9 & 2.0',
  description:
    %{
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      },
  image_url: 'ruby.jpg',
  price: 49.95)
# . . .
puts "Created second product"
Product.create!(title: 'Rails Test Prescriptions',
  description: 
    %{
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      },
  image_url: 'rtp.jpg',
  price: 34.95)
# . . .
Admin.create(email: "asd@123.com", password: "asdqwe123")
puts "Admin created"
User.create(email: "asd@qwe.com", password: "asdqwe123")
puts "user created"
# . . .User.create!({:email => "guy@gmail.com", :roles => ["admin"], :password => "111111", :password_confirmation => "111111" })
Tutorial.create!(title: 'Introduction to Angular',
  description: 
    %{
        An introduction to Angular.js covering single-page-app concepts, related libraries and angular features by example.
      },
  image_url: 'data:image/jpeg;base64,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',
  price: 49.99,
  file_file_name: "(in)voice_tool_-_Iteración_1.pdf", 
  file_content_type: "application/pdf",
  file_file_size: 54922, file_updated_at: "2015-06-15 20:35:19",
  video_embed: '<iframe width="560" height="315" src="https://www.youtube.com/embed/TRrL5j3MIvo" frameborder="0" allowfullscreen></iframe>')
# . . .
Tutorial.create!(title: 'Ruby on Rails Tutorial',
  description: 
    %{
        We'll cover installation, MVC, setting up MySQL, the file system, creating controllers and views, embedded Ruby, Routes, communication between the controller and views, migrations and more.
      },
  image_url: 'data:image/jpeg;base64,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',
  price: 59.90,
  file_file_name: "(in)voice_tool_-_Iteración_1.pdf", 
  file_content_type: "application/pdf",
  file_file_size: 54922, file_updated_at: "2015-06-15 20:35:19",
  video_embed: '<iframe width="560" height="315" src="https://www.youtube.com/embed/GY7Ps8fqGdc" frameborder="0" allowfullscreen></iframe>')
puts "Done!"
