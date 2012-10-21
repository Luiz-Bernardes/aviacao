require "spec_helper"

describe PassageirosController do
  describe "routing" do

    it "routes to #index" do
      get("/passageiros").should route_to("passageiros#index")
    end

    it "routes to #new" do
      get("/passageiros/new").should route_to("passageiros#new")
    end

    it "routes to #show" do
      get("/passageiros/1").should route_to("passageiros#show", :id => "1")
    end

    it "routes to #edit" do
      get("/passageiros/1/edit").should route_to("passageiros#edit", :id => "1")
    end

    it "routes to #create" do
      post("/passageiros").should route_to("passageiros#create")
    end

    it "routes to #update" do
      put("/passageiros/1").should route_to("passageiros#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/passageiros/1").should route_to("passageiros#destroy", :id => "1")
    end

  end
end
