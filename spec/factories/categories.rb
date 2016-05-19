FactoryGirl.define do

  factory :category1, class: Category do
    sequence(:name) { |n| "category#{n}" }
  end

  factory :category_error, class: Category do
    name 'ab'
  end
end