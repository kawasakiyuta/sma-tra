# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coding: utf-8

Service.create(:name => '観察日記', :sales_date => '2011-11-14', :price => 1000)
Service.create(:name => 'Simple Life', :sales_date => '2012-02-08', :price => 2300)
Service.create(:name => 'メガネ入門', :sales_date => '2011-10-25', :price => 800)