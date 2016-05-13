require 'spec_helper'

RSpec.describe Publisher, type: :model do

  before(:all) do
    @publisher = FactoryGirl.create(:publisher1)
  end

  it 'valid factory' do
    expect(@publisher).to be_valid
  end

  it 'invalid factory' do
    publisher_error = FactoryGirl.build(:publisher_error)
    expect(publisher_error).to be_invalid
  end
end
