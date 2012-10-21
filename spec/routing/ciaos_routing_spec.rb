require "spec_helper"

describe CiaosController do
  describe "routing" do

    it "routes to #index" do
      get("/ciaos").should route_to("ciaos#index")
    end

    it "routes to #new" do
      get("/ciaos/new").should route_to("ciaos#new")
    end

    it "routes to #show" do
      get("/ciaos/1").should route_to("ciaos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/ciaos/1/edit").should route_to("ciaos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/ciaos").should route_to("ciaos#create")
    end

    it "routes to #update" do
      put("/ciaos/1").should route_to("ciaos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/ciaos/1").should route_to("ciaos#destroy", :id => "1")
    end

  end
end
