require 'spec_helper'

RSpec.describe PublishersController, type: :controller do

  before(:all) do
    @publisher = FactoryGirl.create(:publisher1)
    @params = FactoryGirl.attributes_for(:publisher1)
    @params_error = FactoryGirl.attributes_for(:publisher_error)
  end

  it 'get new template' do
    get :new
    expect(response).to render_template('new')
    expect(response.status).to eq(200)
  end

  it 'create publisher sucess' do
    expect { post :create, publisher: @params }.to change(Publisher, :count).by(1)
  end

  it 'creates publisher failure' do
    expect{ (post :create, publisher: @params_error).response.status.to render_template('new') }
  end

  it 'updates the publisher' do
    put :update, id: @publisher.id, publisher: @params
    expect(response).to redirect_to('/publishers')
  end

  it 'renders the edit page' do
    expect{ ( get :edit, id: @publisher.id).response.status.to render_template('edit') }
  end

  it 'destroys publisher' do
    expect{ delete :destroy, id: @publisher.id }.to change(Publisher, :count).by(-1)
  end

  it 'redirect index' do
    expect{ (get :index).response.status.to render_template('index') }
  end

  it 'render the show' do
    expect{ (get :show, id: @publisher.id).response.status.to render_template('show') }
  end
end
