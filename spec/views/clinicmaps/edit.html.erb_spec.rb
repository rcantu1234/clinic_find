require 'rails_helper'

RSpec.describe "clinicmaps/edit", type: :view do
  before(:each) do
    @clinicmap = assign(:clinicmap, Clinicmap.create!())
  end

  it "renders the edit clinicmap form" do
    render

    assert_select "form[action=?][method=?]", clinicmap_path(@clinicmap), "post" do
    end
  end
end
