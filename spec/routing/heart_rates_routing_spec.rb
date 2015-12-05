require "rails_helper"

RSpec.describe HeartRatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/heart_rates").to route_to("heart_rates#index")
    end

    it "routes to #new" do
      expect(:get => "/heart_rates/new").to route_to("heart_rates#new")
    end

    it "routes to #show" do
      expect(:get => "/heart_rates/1").to route_to("heart_rates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/heart_rates/1/edit").to route_to("heart_rates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/heart_rates").to route_to("heart_rates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/heart_rates/1").to route_to("heart_rates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/heart_rates/1").to route_to("heart_rates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/heart_rates/1").to route_to("heart_rates#destroy", :id => "1")
    end

  end
end
