require 'rails_helper'
require 'spec_helper'

describe ArticlesController do 

	describe "GET" do

		before do 
			@article = create(:article)
		end
		context "user creates an article" do
			
			it "displays correct data" do
				get :index
				expect(response).to be_success
			end

			it "displays correct data" do
				get :show, id: @article
				expect(assigns(:article)).to eq @article
			end

			it "displays render correct template" do 
				get :new
				expect(response).to render_template("new")
			end

			it "displays render correct template" do 
				get :edit, id: @article
				expect(response).to render_template("edit")
			end
		end
	end

	describe "POST" do

		context "user creates an article" do
			it "adds one article" do	
				expect{ post :create, {:article => attributes_for(:article)} }.to change(Article, :count).by(1)
			end
		end
	end
end



































