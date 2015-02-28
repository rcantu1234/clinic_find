require 'rails_helper'

RSpec.describe "clinicmaps/new", type: :view do
  before(:each) do
    assign(:clinicmap, Clinicmap.new())
  end

  it "renders new clinicmap form" do
    render

    assert_select "form[action=?][method=?]", clinicmaps_path, "post" do
    end
  end
end
