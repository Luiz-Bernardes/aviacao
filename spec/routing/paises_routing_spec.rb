require "spec_helper"

describe PaisesController do
  describe "routing" do

    it "routes to #index" do
      get("/paises").should route_to("paises#index")
    end

    it "routes to #new" do
      get("/paises/new").should route_to("paises#new")
    end

    it "routes to #show" do
      get("/paises/1").should route_to("paises#show", :id => "1")
    end

    it "routes to #edit" do
      get("/paises/1/edit").should route_to("paises#edit", :id => "1")
    end

    it "routes to #create" do
      post("/paises").should route_to("paises#create")
    end

    it "routes to #update" do
      put("/paises/1").should route_to("paises#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/paises/1").should route_to("paises#destroy", :id => "1")
    end

  end
end
