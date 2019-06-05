require "rails_helper"

RSpec.describe V1::QuestionsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/questions").to route_to("v1/questions#index")
    end

    it "routes to #show" do
      expect(:get => "/questions/1").to route_to("v1/questions#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/questions").to route_to("v1/questions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/questions/1").to route_to("v1/questions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/questions/1").to route_to("v1/questions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/questions/1").to route_to("v1/questions#destroy", :id => "1")
    end
  end
end
