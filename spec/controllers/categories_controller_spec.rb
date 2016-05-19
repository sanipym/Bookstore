require 'spec_helper'

RSpec.describe CategoriesController, type: :controller do
  
  before(:all) do
    @category1 = FactoryGirl.create(:category1)
    @params = FactoryGirl.attributes_for(:category1)
    @params_error = FactoryGirl.attributes_for(:category_error)
  end

  it 'renders the new' do
    get :new
    expect(response).to render_template('new')
  end

  it 'create a category' do
    post :create, category: @params
    expect { response.status.to redirect_to('index') }
  end

  it 'create a category fails' do
    post :create, category: @params_error
    expect(response.status).to render_template('new')
  end

  it 'update a category' do
    put :update, id: @category1.id, category: @params
    expect(response.status).to redirect_to('/categories')
  end

  it 'edit a category' do
    get :edit, id: @category1.id
    expect(response).to render_template('edit')
  end

  it 'renders the show' do
    get :show, id: @category1.id
    expect(response).to render_template('show')
  end

  it 'destroy a category' do
    expect{ delete :destroy, id: @category1.id}.to change(Category, :count).by(-1)
  end

  it 'renders index' do
    get :index
    expect(response).to render_template('index')
  end
end
