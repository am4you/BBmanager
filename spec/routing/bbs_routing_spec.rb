require "spec_helper"

describe BbsController do
  describe "routing" do

    it "routes to #index" do
      get("/bbs").should route_to("bbs#index")
    end

    it "routes to #new" do
      get("/bbs/new").should route_to("bbs#new")
    end

    it "routes to #show" do
      get("/bbs/1").should route_to("bbs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bbs/1/edit").should route_to("bbs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bbs").should route_to("bbs#create")
    end

    it "routes to #update" do
      put("/bbs/1").should route_to("bbs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bbs/1").should route_to("bbs#destroy", :id => "1")
    end

  end
end
