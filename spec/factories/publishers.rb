FactoryGirl.define do

  factory :publisher1, class: Publisher do
    sequence(:name) { |n| "publisher#{n}" }
  end

  factory :publisher_error, class: Publisher do
    name nil
  end
end