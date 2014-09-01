require 'rails_helper'
require 'spec_helper'

describe ProductsController do 
  context "GET" do
    it "should render template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  context "POST" do 
    before { 
      @product = Product.new( name: "Roma", description: "Aenean ultricies mi vitae est. Mauris placerat eleifend leo.", image_src: "/images/roma.jpg", months: "april-september", price: 25.35, 
      featured: true )
    }
    it "should display correct data" do 
      post :create, id: @product
      expect(request.status).to eq '302'
    end
  end

end
