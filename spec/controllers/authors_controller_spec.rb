require 'spec_helper'
require 'pry'

RSpec.describe AuthorsController, type: :controller do

  before(:all) do
    @author = FactoryGirl.create(:author1)
    @update_params = FactoryGirl.attributes_for(:author1)
  end

  it 'get new template' do
    get :new
    expect(response).to render_template('new')
    expect(response.status).to eq(200)
  end

  it 'create author sucess' do
    create_params = FactoryGirl.attributes_for(:author1)
    expect { post :create, author: create_params }.to change(Author, :count).by(1)
  end

  it 'creates author failure' do
    create_param_fail = FactoryGirl.attributes_for(:author_error)
    post :create, author: create_param_fail
    expect(response).to render_template('new')
  end

  it 'updates the author' do
    put :update, id: @author.id, author: @update_params
    expect(response).to redirect_to('/authors')
  end

  it 'renders the edit page' do
    get :edit, id: @author.id
    expect(response).to render_template('edit')
  end

  it 'render the show' do
    get :show, id: @author.id
    expect(response).to render_template('show')
  end

  it 'destroys author' do
  expect{ delete :destroy, id: @author.id }.to change(Author, :count).by(-1)
  end

  it 'redirect index' do
    get :index
    expect(response).to render_template('index')
  end
end
