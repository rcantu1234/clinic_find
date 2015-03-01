require 'rails_helper'

RSpec.describe "clinicmaps/index", type: :view do
  before(:each) do
    assign(:clinicmaps, [
      Clinicmap.create!(),
      Clinicmap.create!()
    ])
  end

  it "renders a list of clinicmaps" do
    render
  end
end
