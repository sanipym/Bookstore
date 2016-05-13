require 'spec_helper'

RSpec.describe Category, type: :model do
  
  before(:all) do
    @category = FactoryGirl.create(:category1)
  end

  it 'valid factory' do
    expect(@category).to be_valid
  end

  it 'valid only with name and min 3' do
    expect(@category).to be_valid
  end

  it 'invalid if name nil' do
    category_error = FactoryGirl.build(:category_error)
    expect(category_error).to be_invalid
  end
end
