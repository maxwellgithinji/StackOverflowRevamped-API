require "rails_helper"

RSpec.describe V1::AnswersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/questions/1/answers").to route_to("v1/answers#index", :question_id => "1")
    end

    it "routes to #show" do
      expect(:get => "/questions/1/answers/1").to route_to("v1/answers#show", :question_id => "1", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/questions/1/answers").to route_to("v1/answers#create", :question_id => "1")
    end

    it "routes to #update via PUT" do
      expect(:put => "/questions/1/answers/1").to route_to("v1/answers#update", :question_id => "1", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/questions/1/answers/1").to route_to("v1/answers#update", :question_id => "1", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/questions/1/answers/1").to route_to("v1/answers#destroy", :question_id => "1", :id => "1")
    end
  end
end
