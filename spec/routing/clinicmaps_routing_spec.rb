require "rails_helper"

RSpec.describe ClinicmapsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/clinicmaps").to route_to("clinicmaps#index")
    end

    it "routes to #new" do
      expect(:get => "/clinicmaps/new").to route_to("clinicmaps#new")
    end

    it "routes to #show" do
      expect(:get => "/clinicmaps/1").to route_to("clinicmaps#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/clinicmaps/1/edit").to route_to("clinicmaps#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/clinicmaps").to route_to("clinicmaps#create")
    end

    it "routes to #update" do
      expect(:put => "/clinicmaps/1").to route_to("clinicmaps#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/clinicmaps/1").to route_to("clinicmaps#destroy", :id => "1")
    end

  end
end
