require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :age => 1,
      :gender => "MyString",
      :height => 1,
      :weight => 1,
      :diseases => "MyString",
      :allergies => "MyString"
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input#user_first_name[name=?]", "user[first_name]"

      assert_select "input#user_last_name[name=?]", "user[last_name]"

      assert_select "input#user_age[name=?]", "user[age]"

      assert_select "input#user_gender[name=?]", "user[gender]"

      assert_select "input#user_height[name=?]", "user[height]"

      assert_select "input#user_weight[name=?]", "user[weight]"

      assert_select "input#user_diseases[name=?]", "user[diseases]"

      assert_select "input#user_allergies[name=?]", "user[allergies]"
    end
  end
end
