# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



products = Product.create([
	{name: 'Alaska', description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", 
	price: 44.55, months: 'april-june', image_src: '/images/alaska.jpg', featured: true},
	{name: 'Atacama Desert', description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", 
	price: 66.75, months: 'september-december', image_src: '/images/atacama-desert.jpg', featured: true},
	{name: 'India', description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", 
	price: 95.85, months: 'march-august', image_src: '/images/india.jpg', featured: false},
	{name: 'Machupichu', description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", 
	price: 25.45, months: 'february-november', image_src: '/images/machupichu.jpg', featured: false},
	{name: 'Tanzania', description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", 
	price: 44.55, months: 'april-december', image_src: '/images/tanzania.jpg', featured: true},
	])

testimonials = Product.find(2).testimonials.create([
  {name: 'Testimonial 4', email: 'a1@h.com', body: 'Aenean ultricies mi vitae est.'},
  {name: 'Testimonial 3', email: 'a2@h.com', body: 'Aenean ultricies mi vitae est.'},
  {name: 'Testimonial 2', email: 'a3@h.com', body: 'Aenean ultricies mi vitae est.'},
  {name: 'Testimonial 1', email: 'a4@h.com', body: 'Aenean ultricies mi vitae est.'}
])

articles = Article.create([
  {title: 'Venecia', author: 'John', date:'22/01/2014', body: 'Aenean ultricies mi vitae est.'},
  {title: 'Roma', author: 'Peter', date:'25/09/2014', body: 'Aenean ultricies mi vitae est.'},
  {title: 'Alicante', author: 'Sergio', date:'02/01/2014', body: 'Aenean ultricies mi vitae est.'},
  {title: 'Lisboa', author: 'Vanessa', date:'16/09/2014', body: 'Aenean ultricies mi vitae est.'},
  {title: 'Paris', author: 'Victor', date:'14/12/2014', body: 'Aenean ultricies mi vitae est.'}
])

comments = Article.last.comments.create([
  {commenter: 'Charles', body: 'Aenean ultricies mi vitae est.'},
  {commenter: 'Dominique', body: 'Aenean ultricies mi vitae est.'},
  {commenter: 'Hector', body: 'Aenean ultricies mi vitae est.'},
  {commenter: 'Ana', body: 'Aenean ultricies mi vitae est.'},
  {commenter: 'Vanessa', body: 'Aenean ultricies mi vitae est.'}
])

