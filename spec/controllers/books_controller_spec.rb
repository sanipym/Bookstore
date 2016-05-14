require 'spec_helper'

RSpec.describe BooksController, type: :controller do

  before(:all) do
    @book = FactoryGirl.create(:book1)
    @params = FactoryGirl.attributes_for(:book1)
  end

  it 'renders the new' do
    get :new
    expect(response).to render_template('new')
  end

  it 'create a book' do
    post :create, book: @params
    expect(response.status).to redirect_to('/books')
  end

  it 'update a book' do
    put :update, id: @book.id, book: @params
    expect(response.status).to redirect_to('/books')
  end

  it 'edit a book' do
    get :edit, id: @book.id
    expect(response).to render_template('edit')
  end

  it 'destroy a book' do
    expect{delete :destroy, id: @book.id}.to change(Book, :count).by(-1)
  end

  it 'renders index' do
    get :index
    expect(response).to render_template('index')
  end

  it 'renders the show' do
    expect{ (get :show, id: @book.id).response.status.to render_template('show') }
  end
end
