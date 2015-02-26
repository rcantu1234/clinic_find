require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :age => 1,
        :gender => "Gender",
        :height => 2,
        :weight => 3,
        :diseases => "Diseases",
        :allergies => "Allergies"
      ),
      User.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :age => 1,
        :gender => "Gender",
        :height => 2,
        :weight => 3,
        :diseases => "Diseases",
        :allergies => "Allergies"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Gender".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Diseases".to_s, :count => 2
    assert_select "tr>td", :text => "Allergies".to_s, :count => 2
  end
end
