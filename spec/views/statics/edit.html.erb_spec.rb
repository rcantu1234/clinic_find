require 'rails_helper'

RSpec.describe "statics/edit", type: :view do
  before(:each) do
    @static = assign(:static, Static.create!(
      :index => "MyString",
      :edit => "MyString",
      :show => "MyString",
      :new => "MyString"
    ))
  end

  it "renders the edit static form" do
    render

    assert_select "form[action=?][method=?]", static_path(@static), "post" do

      assert_select "input#static_index[name=?]", "static[index]"

      assert_select "input#static_edit[name=?]", "static[edit]"

      assert_select "input#static_show[name=?]", "static[show]"

      assert_select "input#static_new[name=?]", "static[new]"
    end
  end
end
