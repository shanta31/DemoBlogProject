require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  before(:each) do
    @request.env['devise.mapping'] = Devise.mappings[:user]
    user = FactoryBot.create(:user)
    sign_in user
  end
  describe "GET index" do
    it "assigns @posts" do
      @user = FactoryBot.build(:user)
      post = Post.create(title: 'abc', description: "Hii let's start", date: "2020-02-23")
      get :index
      expect(response.status).to eq(200)
      expect(assigns(:posts)).to eq([post])
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
