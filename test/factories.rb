FactoryGirl.define do
  factory :article do
  end

  factory :comment do
    article
  end
end
