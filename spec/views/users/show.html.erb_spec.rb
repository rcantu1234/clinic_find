require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :age => 1,
      :gender => "Gender",
      :height => 2,
      :weight => 3,
      :diseases => "Diseases",
      :allergies => "Allergies"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Diseases/)
    expect(rendered).to match(/Allergies/)
  end
end
