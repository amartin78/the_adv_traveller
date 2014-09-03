FactoryGirl.define do
  factory :testimonial do
    name "Testimonial..."
    email "example@example.org"
    body "Mauris placerat eleifend leo."
    product{FactoryGirl.build(:product)}
  end
end