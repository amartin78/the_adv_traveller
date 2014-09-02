FactoryGirl.define do 
  factory :product do 
    name 'Athens'
    description 'Aenean ultricies mi vitae est. Mauris placerat eleifend leo.'
    image_src  '/images/athens.jpg'
    months     'april-september'
    price       25.65
    featured    true
  end
end