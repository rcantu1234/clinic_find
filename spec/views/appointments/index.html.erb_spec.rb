require 'rails_helper'

RSpec.describe "appointments/index", type: :view do
  before(:each) do
    assign(:appointments, [
      Appointment.create!(
        :doctor_name => "Doctor Name",
        :location => "Location",
        :doctor_phone_number => "Doctor Phone Number",
        :note => "",
        :user => nil
      ),
      Appointment.create!(
        :doctor_name => "Doctor Name",
        :location => "Location",
        :doctor_phone_number => "Doctor Phone Number",
        :note => "",
        :user => nil
      )
    ])
  end

  it "renders a list of appointments" do
    render
    assert_select "tr>td", :text => "Doctor Name".to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => "Doctor Phone Number".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
