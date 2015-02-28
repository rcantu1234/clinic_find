require 'rails_helper'

RSpec.describe "clinicmaps/show", type: :view do
  before(:each) do
    @clinicmap = assign(:clinicmap, Clinicmap.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
