FactoryGirl.define do

  factory :author1, class: Author do
    sequence(:first_name) { |n| "fname#{n}" }
    sequence(:last_name) { |n| "lname#{n}" }
  end

  factory :author_error, class: Author do
    first_name nil
    last_name nil
  end
end