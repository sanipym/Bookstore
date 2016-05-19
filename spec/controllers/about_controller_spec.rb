require 'spec_helper'
require 'pry'

RSpec.describe AboutController, type: :controller do

  it 'checks the index' do
    get :index
    expect(response.status).to eq(200)
  end

end
