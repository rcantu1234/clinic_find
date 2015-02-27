require 'rails_helper'

RSpec.describe "statics/index", type: :view do
  before(:each) do
    assign(:statics, [
      Static.create!(
        :index => "Index",
        :edit => "Edit",
        :show => "Show",
        :new => "New"
      ),
      Static.create!(
        :index => "Index",
        :edit => "Edit",
        :show => "Show",
        :new => "New"
      )
    ])
  end

  it "renders a list of statics" do
    render
    assert_select "tr>td", :text => "Index".to_s, :count => 2
    assert_select "tr>td", :text => "Edit".to_s, :count => 2
    assert_select "tr>td", :text => "Show".to_s, :count => 2
    assert_select "tr>td", :text => "New".to_s, :count => 2
  end
end
