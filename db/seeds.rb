# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
products = Product.create(
	[{  price: 9.99, imgurl: 'www.google.com'}, 
	{ price: 109.99, imgurl: 'www.baidu.com'} ]
)