FactoryGirl.define do
  factory :book1, class: Book do
    sequence(:title) { |n| "title#{n}" }
    sequence(:isbn) {|n| "ISBN#{n}"}
    sequence(:year) { |n| "200#{n}" }
    price '120.23'
    excerpt 'a wonder ful book'
    buy 'good one'
    format 'hard-bind'
    page 200
    coverpath 'nice'
    publisher_id 1
    category_id 1
    author_id 1
  end
end
