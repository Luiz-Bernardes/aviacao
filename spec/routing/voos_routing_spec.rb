require "spec_helper"

describe VoosController do
  describe "routing" do

    it "routes to #index" do
      get("/voos").should route_to("voos#index")
    end

    it "routes to #new" do
      get("/voos/new").should route_to("voos#new")
    end

    it "routes to #show" do
      get("/voos/1").should route_to("voos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/voos/1/edit").should route_to("voos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/voos").should route_to("voos#create")
    end

    it "routes to #update" do
      put("/voos/1").should route_to("voos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/voos/1").should route_to("voos#destroy", :id => "1")
    end

  end
end
