FactoryGirl.define do 
  factory :comment do
    commenter "Michael"
    body "Aenean ultricies mi vitae est. Mauris placerat eleifend leo."
    article{FactoryGirl.build(:article)}
  end
end  