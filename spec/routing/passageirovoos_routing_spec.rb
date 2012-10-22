require "spec_helper"

describe PassageirovoosController do
  describe "routing" do

    it "routes to #index" do
      get("/passageirovoos").should route_to("passageirovoos#index")
    end

    it "routes to #new" do
      get("/passageirovoos/new").should route_to("passageirovoos#new")
    end

    it "routes to #show" do
      get("/passageirovoos/1").should route_to("passageirovoos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/passageirovoos/1/edit").should route_to("passageirovoos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/passageirovoos").should route_to("passageirovoos#create")
    end

    it "routes to #update" do
      put("/passageirovoos/1").should route_to("passageirovoos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/passageirovoos/1").should route_to("passageirovoos#destroy", :id => "1")
    end

  end
end
