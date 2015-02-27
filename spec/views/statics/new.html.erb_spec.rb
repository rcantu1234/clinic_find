require 'rails_helper'

RSpec.describe "statics/new", type: :view do
  before(:each) do
    assign(:static, Static.new(
      :index => "MyString",
      :edit => "MyString",
      :show => "MyString",
      :new => "MyString"
    ))
  end

  it "renders new static form" do
    render

    assert_select "form[action=?][method=?]", statics_path, "post" do

      assert_select "input#static_index[name=?]", "static[index]"

      assert_select "input#static_edit[name=?]", "static[edit]"

      assert_select "input#static_show[name=?]", "static[show]"

      assert_select "input#static_new[name=?]", "static[new]"
    end
  end
end
