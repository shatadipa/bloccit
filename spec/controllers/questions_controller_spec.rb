require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do

  let(:my_question){Question.create!(title: RandomData.random_sentence, body: RandomData.random_paragraph)}

  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'assigns [my_question] to @questions' do
      get 'index'
      expect(assigns(:questions)).to eq([my_question])
    end
  end

  describe 'GET #show' do
    it 'returns http success' do
      get :show, {id:my_question}
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #edit' do
    it 'returns http success' do
      get :edit,{id:my_question}
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #new' do
    it 'returns http success' do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

end
