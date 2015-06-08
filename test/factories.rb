FactoryGirl.define do
  factory :article do
    day  01
    month 'janvier'
    year 2015
    title 'Ceci est un titre'
    subtitle 'Et cela un sous-titre'
    content 'Lorem ipsum dolor sit amet, consectetur adipisicing elit'
  end

  factory :comment do
    article
  end
end
