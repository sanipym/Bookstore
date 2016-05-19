require 'spec_helper'

RSpec.describe Author, type: :model do

  before(:all) do
    @author1 = FactoryGirl.create(:author1)
  end

  it 'has valid factory' do
    expect(@author1).to be_valid
  end

  it 'not valid without first name and last name' do
    author2 = FactoryGirl.build(:author_error)
    expect(author2).to be_invalid
  end
  
end
