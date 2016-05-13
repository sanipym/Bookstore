require 'spec_helper'

RSpec.describe Book, type: :model do

  before(:all) do
    @book1 = FactoryGirl.create(:book1)
  end

  it 'valid Factory' do
    expect(@book1).to be_valid
  end

  it 'check for publisher_id' do
    expect(@book1.publisher_id).to eq(1)
  end

  it 'check for category_id' do
    expect(@book1.category_id).to eq(1)
  end

  it 'check for author_id' do
    expect(@book1.author_id).to eq(1)
  end
end
