# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

products = Product.create([
	{name: 'Austria', description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", 
	price: 1500.0, months: 'April-June', image_src: '/images/austria.jpg', featured: true},
	{name: 'Botswana', description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", 
	price: 1950.0, months: 'September-December', image_src: '/images/beach.jpg', featured: true},
	{name: 'Taj-Mahal', description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", 
	price: 2200.0, months: 'March-August', image_src: '/images/taj-mahal.jpg', featured: true},
	{name: 'Thailand', description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", 
	price: 1750.0, months: 'February-November', image_src: '/images/fishing.jpg', featured: true},
	{name: 'Tanzania', description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", 
	price: 2350.0, months: 'April-December', image_src: '/images/tanzania-kilimanjaro.jpg', featured: true},
  {name: 'Pyrenees', description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
  price: 1320.0, months: 'March-August', image_src: '/images/pyrenees.jpg', featured: true},
  {name: 'Colosseum', description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
  price: 1100.0, months: 'May-September', image_src: '/images/colosseum.jpg', featured: true},
  {name: 'New Zealand', description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.",
  price: 3100.0, months: 'June-November', image_src: '/images/new-zealand.jpg', featured: true}
])

testimonials = Product.find(2).testimonials.create([
  {name: 'Testimonial 4', email: 'a1@h.com', body: 'Aenean ultricies mi vitae est.'},
  {name: 'Testimonial 3', email: 'a2@h.com', body: 'Aenean ultricies mi vitae est.'},
  {name: 'Testimonial 2', email: 'a3@h.com', body: 'Aenean ultricies mi vitae est.'},
  {name: 'Testimonial 1', email: 'a4@h.com', body: 'Aenean ultricies mi vitae est.'}
])

articles = Article.create([
  {title: 'Venecia: the Floating City', author: 'John', date:'22-01-2014', body: 'Aenean ultricies mi vitae est.'},
  {title: 'Roma: Center of the Italian Renaissance', author: 'Peter', date:'25-09-2014', body: 'Aenean ultricies mi vitae est.'},
  {title: 'Alicante: a Historic Mediterranean Port', author: 'Sergio', date:'02-01-2014', body: 'Aenean ultricies mi vitae est.'},
  {title: 'Lisboa: One of the Oldest Cities in the World', author: 'Vanessa', date:'16-09-2014', body: 'Aenean ultricies mi vitae est.'},
  {title: 'Paris: Home of the Most visited Art Museum in the World', author: 'Victor', date:'14-12-2014', body: 'Aenean ultricies mi vitae est.'}
  {title: 'Asturias: visit Picos de Europa National Park', author: 'Victor', date:'14-12-2014', body: 'Aenean ultricies mi vitae est.'}
])

comments = Article.last.comments.create([
  {commenter: 'Charles', body: 'Aenean ultricies mi vitae est.'},
  {commenter: 'Dominique', body: 'Aenean ultricies mi vitae est.'},
  {commenter: 'Hector', body: 'Aenean ultricies mi vitae est.'},
  {commenter: 'Ana', body: 'Aenean ultricies mi vitae est.'},
  {commenter: 'Vanessa', body: 'Aenean ultricies mi vitae est.'}
])





